import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => SplashWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => SplashWidget(),
        ),
        FFRoute(
          name: HomeWidget.routeName,
          path: HomeWidget.routePath,
          builder: (context, params) => HomeWidget(),
        ),
        FFRoute(
          name: ProfileWidget.routeName,
          path: ProfileWidget.routePath,
          builder: (context, params) => ProfileWidget(),
        ),
        FFRoute(
          name: ProfileEditWidget.routeName,
          path: ProfileEditWidget.routePath,
          builder: (context, params) => ProfileEditWidget(),
        ),
        FFRoute(
          name: HelpCenterWidget.routeName,
          path: HelpCenterWidget.routePath,
          builder: (context, params) => HelpCenterWidget(),
        ),
        FFRoute(
          name: PasswordChangeWidget.routeName,
          path: PasswordChangeWidget.routePath,
          builder: (context, params) => PasswordChangeWidget(),
        ),
        FFRoute(
          name: OnboardingWidget.routeName,
          path: OnboardingWidget.routePath,
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: LanguagesWidget.routeName,
          path: LanguagesWidget.routePath,
          builder: (context, params) => LanguagesWidget(),
        ),
        FFRoute(
          name: DialCodesWidget.routeName,
          path: DialCodesWidget.routePath,
          builder: (context, params) => DialCodesWidget(),
        ),
        FFRoute(
          name: SignInMobileWidget.routeName,
          path: SignInMobileWidget.routePath,
          builder: (context, params) => SignInMobileWidget(),
        ),
        FFRoute(
          name: VerifyCodeWidget.routeName,
          path: VerifyCodeWidget.routePath,
          builder: (context, params) => VerifyCodeWidget(),
        ),
        FFRoute(
          name: SignUpWidget.routeName,
          path: SignUpWidget.routePath,
          builder: (context, params) => SignUpWidget(),
        ),
        FFRoute(
          name: WelcomeWidget.routeName,
          path: WelcomeWidget.routePath,
          builder: (context, params) => WelcomeWidget(),
        ),
        FFRoute(
          name: SupportHomeWidget.routeName,
          path: SupportHomeWidget.routePath,
          builder: (context, params) => SupportHomeWidget(),
        ),
        FFRoute(
          name: PasswordResetWidget.routeName,
          path: PasswordResetWidget.routePath,
          builder: (context, params) => PasswordResetWidget(),
        ),
        FFRoute(
          name: PrivacyPolicyWidget.routeName,
          path: PrivacyPolicyWidget.routePath,
          builder: (context, params) => PrivacyPolicyWidget(),
        ),
        FFRoute(
          name: TremsConditionsWidget.routeName,
          path: TremsConditionsWidget.routePath,
          builder: (context, params) => TremsConditionsWidget(),
        ),
        FFRoute(
          name: AccountPrivacyWidget.routeName,
          path: AccountPrivacyWidget.routePath,
          builder: (context, params) => AccountPrivacyWidget(),
        ),
        FFRoute(
          name: AccountDeleteCnfWidget.routeName,
          path: AccountDeleteCnfWidget.routePath,
          builder: (context, params) => AccountDeleteCnfWidget(
            reason: params.getParam(
              'reason',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AccountDeleteWidget.routeName,
          path: AccountDeleteWidget.routePath,
          builder: (context, params) => AccountDeleteWidget(),
        ),
        FFRoute(
          name: NotificationSettingWidget.routeName,
          path: NotificationSettingWidget.routePath,
          builder: (context, params) => NotificationSettingWidget(),
        ),
        FFRoute(
          name: InviteFriendWidget.routeName,
          path: InviteFriendWidget.routePath,
          builder: (context, params) => InviteFriendWidget(),
        ),
        FFRoute(
          name: SupportCallRequestWidget.routeName,
          path: SupportCallRequestWidget.routePath,
          builder: (context, params) => SupportCallRequestWidget(),
        ),
        FFRoute(
          name: TicketsWidget.routeName,
          path: TicketsWidget.routePath,
          builder: (context, params) => TicketsWidget(),
        ),
        FFRoute(
          name: SplashWidget.routeName,
          path: SplashWidget.routePath,
          builder: (context, params) => SplashWidget(),
        ),
        FFRoute(
          name: TicketDetailsWidget.routeName,
          path: TicketDetailsWidget.routePath,
          builder: (context, params) => TicketDetailsWidget(),
        ),
        FFRoute(
          name: SecurityWidget.routeName,
          path: SecurityWidget.routePath,
          builder: (context, params) => SecurityWidget(),
        ),
        FFRoute(
          name: AboutUsWidget.routeName,
          path: AboutUsWidget.routePath,
          builder: (context, params) => AboutUsWidget(),
        ),
        FFRoute(
          name: FeedbackWidget.routeName,
          path: FeedbackWidget.routePath,
          builder: (context, params) => FeedbackWidget(),
        ),
        FFRoute(
          name: PasswordCreationSuccessfulWidget.routeName,
          path: PasswordCreationSuccessfulWidget.routePath,
          builder: (context, params) => PasswordCreationSuccessfulWidget(),
        ),
        FFRoute(
          name: TroubleshootingWidget.routeName,
          path: TroubleshootingWidget.routePath,
          builder: (context, params) => TroubleshootingWidget(),
        ),
        FFRoute(
          name: CategoryWidget.routeName,
          path: CategoryWidget.routePath,
          builder: (context, params) => CategoryWidget(),
        ),
        FFRoute(
          name: PasswordResetOTPWidget.routeName,
          path: PasswordResetOTPWidget.routePath,
          builder: (context, params) => PasswordResetOTPWidget(),
        ),
        FFRoute(
          name: AboutTheAppWidget.routeName,
          path: AboutTheAppWidget.routePath,
          builder: (context, params) => AboutTheAppWidget(),
        ),
        FFRoute(
          name: OrdersWidget.routeName,
          path: OrdersWidget.routePath,
          builder: (context, params) => OrdersWidget(),
        ),
        FFRoute(
          name: NotificationWidget.routeName,
          path: NotificationWidget.routePath,
          builder: (context, params) => NotificationWidget(),
        ),
        FFRoute(
          name: AppearanceWidget.routeName,
          path: AppearanceWidget.routePath,
          builder: (context, params) => AppearanceWidget(),
        ),
        FFRoute(
          name: RateTheAppWidget.routeName,
          path: RateTheAppWidget.routePath,
          builder: (context, params) => RateTheAppWidget(),
        ),
        FFRoute(
          name: FAQsWidget.routeName,
          path: FAQsWidget.routePath,
          builder: (context, params) => FAQsWidget(),
        ),
        FFRoute(
          name: ContactsWidget.routeName,
          path: ContactsWidget.routePath,
          builder: (context, params) => ContactsWidget(),
        ),
        FFRoute(
          name: SignInWidget.routeName,
          path: SignInWidget.routePath,
          builder: (context, params) => SignInWidget(),
        ),
        FFRoute(
          name: LoginMethodWidget.routeName,
          path: LoginMethodWidget.routePath,
          builder: (context, params) => LoginMethodWidget(),
        ),
        FFRoute(
          name: ExportWidget.routeName,
          path: ExportWidget.routePath,
          builder: (context, params) => ExportWidget(),
        ),
        FFRoute(
          name: CityLocationWidget.routeName,
          path: CityLocationWidget.routePath,
          builder: (context, params) => CityLocationWidget(),
        ),
        FFRoute(
          name: MyAddressesWidget.routeName,
          path: MyAddressesWidget.routePath,
          builder: (context, params) => MyAddressesWidget(),
        ),
        FFRoute(
          name: AddNewAddressWidget.routeName,
          path: AddNewAddressWidget.routePath,
          builder: (context, params) => AddNewAddressWidget(),
        ),
        FFRoute(
          name: EditAddressWidget.routeName,
          path: EditAddressWidget.routePath,
          builder: (context, params) => EditAddressWidget(),
        ),
        FFRoute(
          name: SearchWidget.routeName,
          path: SearchWidget.routePath,
          builder: (context, params) => SearchWidget(),
        ),
        FFRoute(
          name: CartWidget.routeName,
          path: CartWidget.routePath,
          builder: (context, params) => CartWidget(),
        ),
        FFRoute(
          name: FavoritesWidget.routeName,
          path: FavoritesWidget.routePath,
          builder: (context, params) => FavoritesWidget(),
        ),
        FFRoute(
          name: CategoryDetailsWidget.routeName,
          path: CategoryDetailsWidget.routePath,
          builder: (context, params) => CategoryDetailsWidget(
            tilte: params.getParam(
              'tilte',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: DetailsWidget.routeName,
          path: DetailsWidget.routePath,
          builder: (context, params) => DetailsWidget(
            image: params.getParam(
              'image',
              ParamType.String,
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
            price: params.getParam(
              'price',
              ParamType.String,
            ),
            quantity: params.getParam(
              'quantity',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ReviewsWidget.routeName,
          path: ReviewsWidget.routePath,
          builder: (context, params) => ReviewsWidget(),
        ),
        FFRoute(
          name: SearchResultWidget.routeName,
          path: SearchResultWidget.routePath,
          builder: (context, params) => SearchResultWidget(
            tilte: params.getParam(
              'tilte',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: FiltersWidget.routeName,
          path: FiltersWidget.routePath,
          builder: (context, params) => FiltersWidget(),
        ),
        FFRoute(
          name: AiGroceryPlannerWidget.routeName,
          path: AiGroceryPlannerWidget.routePath,
          builder: (context, params) => AiGroceryPlannerWidget(),
        ),
        FFRoute(
          name: AiGroceryPlannerProcessingWidget.routeName,
          path: AiGroceryPlannerProcessingWidget.routePath,
          builder: (context, params) => AiGroceryPlannerProcessingWidget(),
        ),
        FFRoute(
          name: AIGroceryPlannerSuggectionWidget.routeName,
          path: AIGroceryPlannerSuggectionWidget.routePath,
          builder: (context, params) => AIGroceryPlannerSuggectionWidget(),
        ),
        FFRoute(
          name: AiGroceryPlannerPreviewWidget.routeName,
          path: AiGroceryPlannerPreviewWidget.routePath,
          builder: (context, params) => AiGroceryPlannerPreviewWidget(),
        ),
        FFRoute(
          name: AiGroceryPlannerReadyWidget.routeName,
          path: AiGroceryPlannerReadyWidget.routePath,
          builder: (context, params) => AiGroceryPlannerReadyWidget(),
        ),
        FFRoute(
          name: CheckoutWidget.routeName,
          path: CheckoutWidget.routePath,
          builder: (context, params) => CheckoutWidget(),
        ),
        FFRoute(
          name: EnterPinWidget.routeName,
          path: EnterPinWidget.routePath,
          builder: (context, params) => EnterPinWidget(),
        ),
        FFRoute(
          name: PaymentProcessingPageWidget.routeName,
          path: PaymentProcessingPageWidget.routePath,
          builder: (context, params) => PaymentProcessingPageWidget(),
        ),
        FFRoute(
          name: OrderPlaceDetailsPageWidget.routeName,
          path: OrderPlaceDetailsPageWidget.routePath,
          builder: (context, params) => OrderPlaceDetailsPageWidget(),
        ),
        FFRoute(
          name: PaymentMethodSelectorWidget.routeName,
          path: PaymentMethodSelectorWidget.routePath,
          builder: (context, params) => PaymentMethodSelectorWidget(),
        ),
        FFRoute(
          name: AddPaymentCardWidget.routeName,
          path: AddPaymentCardWidget.routePath,
          builder: (context, params) => AddPaymentCardWidget(),
        ),
        FFRoute(
          name: SearchOrdersWidget.routeName,
          path: SearchOrdersWidget.routePath,
          builder: (context, params) => SearchOrdersWidget(),
        ),
        FFRoute(
          name: OrderDetailsWidget.routeName,
          path: OrderDetailsWidget.routePath,
          builder: (context, params) => OrderDetailsWidget(),
        ),
        FFRoute(
          name: TrackOrderWidget.routeName,
          path: TrackOrderWidget.routePath,
          builder: (context, params) => TrackOrderWidget(),
        ),
        FFRoute(
          name: AudioCallWidget.routeName,
          path: AudioCallWidget.routePath,
          builder: (context, params) => AudioCallWidget(),
        ),
        FFRoute(
          name: ChatWithDeliveryBoyWidget.routeName,
          path: ChatWithDeliveryBoyWidget.routePath,
          builder: (context, params) => ChatWithDeliveryBoyWidget(),
        ),
        FFRoute(
          name: PastOrderWidget.routeName,
          path: PastOrderWidget.routePath,
          builder: (context, params) => PastOrderWidget(),
        ),
        FFRoute(
          name: RateYourOrderWidget.routeName,
          path: RateYourOrderWidget.routePath,
          builder: (context, params) => RateYourOrderWidget(),
        ),
        FFRoute(
          name: OrderDetails02Widget.routeName,
          path: OrderDetails02Widget.routePath,
          builder: (context, params) => OrderDetails02Widget(),
        ),
        FFRoute(
          name: PaymentMethodsWidget.routeName,
          path: PaymentMethodsWidget.routePath,
          builder: (context, params) => PaymentMethodsWidget(),
        ),
        FFRoute(
          name: WalletWidget.routeName,
          path: WalletWidget.routePath,
          builder: (context, params) => WalletWidget(),
        ),
        FFRoute(
          name: MapViewWidget.routeName,
          path: MapViewWidget.routePath,
          builder: (context, params) => MapViewWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  name: state.name,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    curve: transitionInfo.transitionType ==
                            PageTransitionType.scale
                        ? const Interval(0.0, 0.5)
                        : Curves.linear,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
