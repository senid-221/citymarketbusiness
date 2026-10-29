// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LangaugeStruct extends BaseStruct {
  LangaugeStruct({
    String? title,
    String? langCode,
    String? countryFlag,
  })  : _title = title,
        _langCode = langCode,
        _countryFlag = countryFlag;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "lang_code" field.
  String? _langCode;
  String get langCode => _langCode ?? '';
  set langCode(String? val) => _langCode = val;

  bool hasLangCode() => _langCode != null;

  // "country_flag" field.
  String? _countryFlag;
  String get countryFlag => _countryFlag ?? '';
  set countryFlag(String? val) => _countryFlag = val;

  bool hasCountryFlag() => _countryFlag != null;

  static LangaugeStruct fromMap(Map<String, dynamic> data) => LangaugeStruct(
        title: data['title'] as String?,
        langCode: data['lang_code'] as String?,
        countryFlag: data['country_flag'] as String?,
      );

  static LangaugeStruct? maybeFromMap(dynamic data) =>
      data is Map ? LangaugeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'lang_code': _langCode,
        'country_flag': _countryFlag,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'lang_code': serializeParam(
          _langCode,
          ParamType.String,
        ),
        'country_flag': serializeParam(
          _countryFlag,
          ParamType.String,
        ),
      }.withoutNulls;

  static LangaugeStruct fromSerializableMap(Map<String, dynamic> data) =>
      LangaugeStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        langCode: deserializeParam(
          data['lang_code'],
          ParamType.String,
          false,
        ),
        countryFlag: deserializeParam(
          data['country_flag'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LangaugeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LangaugeStruct &&
        title == other.title &&
        langCode == other.langCode &&
        countryFlag == other.countryFlag;
  }

  @override
  int get hashCode => const ListEquality().hash([title, langCode, countryFlag]);
}

LangaugeStruct createLangaugeStruct({
  String? title,
  String? langCode,
  String? countryFlag,
}) =>
    LangaugeStruct(
      title: title,
      langCode: langCode,
      countryFlag: countryFlag,
    );
