// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppInfoStruct extends BaseStruct {
  AppInfoStruct({
    String? logo,
    String? title,
    String? subTitle,
  })  : _logo = logo,
        _title = title,
        _subTitle = subTitle;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;

  bool hasLogo() => _logo != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "subTitle" field.
  String? _subTitle;
  String get subTitle => _subTitle ?? '';
  set subTitle(String? val) => _subTitle = val;

  bool hasSubTitle() => _subTitle != null;

  static AppInfoStruct fromMap(Map<String, dynamic> data) => AppInfoStruct(
        logo: data['logo'] as String?,
        title: data['title'] as String?,
        subTitle: data['subTitle'] as String?,
      );

  static AppInfoStruct? maybeFromMap(dynamic data) =>
      data is Map ? AppInfoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'logo': _logo,
        'title': _title,
        'subTitle': _subTitle,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'subTitle': serializeParam(
          _subTitle,
          ParamType.String,
        ),
      }.withoutNulls;

  static AppInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      AppInfoStruct(
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        subTitle: deserializeParam(
          data['subTitle'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AppInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AppInfoStruct &&
        logo == other.logo &&
        title == other.title &&
        subTitle == other.subTitle;
  }

  @override
  int get hashCode => const ListEquality().hash([logo, title, subTitle]);
}

AppInfoStruct createAppInfoStruct({
  String? logo,
  String? title,
  String? subTitle,
}) =>
    AppInfoStruct(
      logo: logo,
      title: title,
      subTitle: subTitle,
    );
