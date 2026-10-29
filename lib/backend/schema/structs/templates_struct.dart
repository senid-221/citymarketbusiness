// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TemplatesStruct extends BaseStruct {
  TemplatesStruct({
    String? image,
    String? title,
    String? subtitle,
    Color? color,
  })  : _image = image,
        _title = title,
        _subtitle = subtitle,
        _color = color;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  set subtitle(String? val) => _subtitle = val;

  bool hasSubtitle() => _subtitle != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

  static TemplatesStruct fromMap(Map<String, dynamic> data) => TemplatesStruct(
        image: data['image'] as String?,
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        color: getSchemaColor(data['color']),
      );

  static TemplatesStruct? maybeFromMap(dynamic data) => data is Map
      ? TemplatesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'title': _title,
        'subtitle': _subtitle,
        'color': _color,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'subtitle': serializeParam(
          _subtitle,
          ParamType.String,
        ),
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
      }.withoutNulls;

  static TemplatesStruct fromSerializableMap(Map<String, dynamic> data) =>
      TemplatesStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        subtitle: deserializeParam(
          data['subtitle'],
          ParamType.String,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'TemplatesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TemplatesStruct &&
        image == other.image &&
        title == other.title &&
        subtitle == other.subtitle &&
        color == other.color;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([image, title, subtitle, color]);
}

TemplatesStruct createTemplatesStruct({
  String? image,
  String? title,
  String? subtitle,
  Color? color,
}) =>
    TemplatesStruct(
      image: image,
      title: title,
      subtitle: subtitle,
      color: color,
    );
