import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

import '/app_state.dart';
import '/backend/schema/structs/index.dart';

class AiGroceryPlannerService {
  static const _endpoint = String.fromEnvironment(
    'AI_PLANNER_URL',
    defaultValue:
        'https://us-central1-citymarket-business-c4a7a.cloudfunctions.net/generateGroceryPlan',
  );

  static Future<void> generateAndSave({
    required String shoppingFrequency,
    required String mealStyle,
    required String dietaryPreference,
  }) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      throw StateError('Sign in before generating an AI grocery plan.');
    }

    final token = await user.getIdToken();
    if (token == null || token.isEmpty) {
      throw StateError('Your sign-in has expired. Sign in again to continue.');
    }

    final response = await http
        .post(
          Uri.parse(_endpoint),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          },
          body: jsonEncode({
            'goal': '$mealStyle meals; $shoppingFrequency shopping',
            'servings': mealStyle == 'Family Size' ? 4 : 2,
            'mealCount': 3,
            'budget': 100,
            'dietaryRequirements':
                dietaryPreference == 'No Restrictions' ? '' : dietaryPreference,
            'excludedIngredients': <String>[],
          }),
        )
        .timeout(const Duration(seconds: 55));

    final payload = jsonDecode(response.body);
    if (response.statusCode != 200) {
      final message = payload is Map<String, dynamic>
          ? payload['error'] as String?
          : null;
      throw StateError(message ?? 'The AI planner could not make a plan.');
    }

    if (payload is! Map<String, dynamic> ||
        payload['plan'] is! Map<String, dynamic>) {
      throw const FormatException('The AI planner returned an invalid response.');
    }

    _saveShoppingList(payload['plan'] as Map<String, dynamic>);
  }

  static void _saveShoppingList(Map<String, dynamic> plan) {
    final rawLines = plan['shoppingList'];
    if (rawLines is! List || rawLines.isEmpty || rawLines.length > 13) {
      throw const FormatException(
        'The AI planner returned an unsupported shopping list.',
      );
    }

    final existingProducts = [
      ...FFAppState().vegetablesList1.map(
            (product) => (
              image: product.image,
              name: product.name,
              quantity: product.quantity,
              price: product.price,
            ),
          ),
      ...FFAppState().vegetablesList2.map(
            (product) => (
              image: product.image,
              name: product.name,
              quantity: product.quantity,
              price: product.price,
            ),
          ),
    ];

    final suggestions = rawLines.map((rawLine) {
      if (rawLine is! Map<String, dynamic>) {
        throw const FormatException('The AI planner returned an invalid item.');
      }
      final match = existingProducts.where(
        (product) =>
            product.name == rawLine['name'] &&
            product.quantity == rawLine['quantity'] &&
            product.price == rawLine['price'],
      );
      if (match.isEmpty) {
        throw const FormatException(
          'A suggested item is not in the current CityMarket catalog.',
        );
      }
      final product = match.first;
      final units = rawLine['units'];
      final unitPrice = double.tryParse(product.price.replaceFirst(r'$', ''));
      if (units is! int || units < 1 || units > 20 || unitPrice == null) {
        throw const FormatException(
          'The AI planner returned an invalid package quantity or price.',
        );
      }
      return (
        image: product.image,
        name: product.name,
        quantity: product.quantity,
        price: '\$${(unitPrice * units).toStringAsFixed(2)}',
      );
    }).toList();

    FFAppState().update(() {
      FFAppState().vegetablesList1 = suggestions
          .take(5)
          .map(
            (product) => createVegetablesList1Struct(
              image: product.image,
              name: product.name,
              quantity: product.quantity,
              price: product.price,
            ),
          )
          .toList();
      FFAppState().vegetablesList2 = suggestions
          .skip(5)
          .map(
            (product) => createVegetablesList2Struct(
              image: product.image,
              name: product.name,
              quantity: product.quantity,
              price: product.price,
            ),
          )
          .toList();
    });
  }
}
