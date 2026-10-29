// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentMethodStruct extends BaseStruct {
  PaymentMethodStruct({
    String? category,
    String? name,
    String? logo,
  })  : _category = category,
        _name = name,
        _logo = logo;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;

  bool hasLogo() => _logo != null;

  static PaymentMethodStruct fromMap(Map<String, dynamic> data) =>
      PaymentMethodStruct(
        category: data['category'] as String?,
        name: data['name'] as String?,
        logo: data['logo'] as String?,
      );

  static PaymentMethodStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentMethodStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'category': _category,
        'name': _name,
        'logo': _logo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
      }.withoutNulls;

  static PaymentMethodStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentMethodStruct(
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PaymentMethodStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentMethodStruct &&
        category == other.category &&
        name == other.name &&
        logo == other.logo;
  }

  @override
  int get hashCode => const ListEquality().hash([category, name, logo]);
}

PaymentMethodStruct createPaymentMethodStruct({
  String? category,
  String? name,
  String? logo,
}) =>
    PaymentMethodStruct(
      category: category,
      name: name,
      logo: logo,
    );
