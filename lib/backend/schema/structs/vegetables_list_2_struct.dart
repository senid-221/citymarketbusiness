// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VegetablesList2Struct extends BaseStruct {
  VegetablesList2Struct({
    String? image,
    String? name,
    String? quantity,
    String? price,
  })  : _image = image,
        _name = name,
        _quantity = quantity,
        _price = price;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "quantity" field.
  String? _quantity;
  String get quantity => _quantity ?? '';
  set quantity(String? val) => _quantity = val;

  bool hasQuantity() => _quantity != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  static VegetablesList2Struct fromMap(Map<String, dynamic> data) =>
      VegetablesList2Struct(
        image: data['image'] as String?,
        name: data['name'] as String?,
        quantity: data['quantity'] as String?,
        price: data['price'] as String?,
      );

  static VegetablesList2Struct? maybeFromMap(dynamic data) => data is Map
      ? VegetablesList2Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'name': _name,
        'quantity': _quantity,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
      }.withoutNulls;

  static VegetablesList2Struct fromSerializableMap(Map<String, dynamic> data) =>
      VegetablesList2Struct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VegetablesList2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VegetablesList2Struct &&
        image == other.image &&
        name == other.name &&
        quantity == other.quantity &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([image, name, quantity, price]);
}

VegetablesList2Struct createVegetablesList2Struct({
  String? image,
  String? name,
  String? quantity,
  String? price,
}) =>
    VegetablesList2Struct(
      image: image,
      name: name,
      quantity: quantity,
      price: price,
    );
