import '/backend/schema/structs/index.dart';
import '/components/language_option/language_option_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'language_modal_widget.dart' show LanguageModalWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LanguageModalModel extends FlutterFlowModel<LanguageModalWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for LanguageOption dynamic component.
  late FlutterFlowDynamicModels<LanguageOptionModel> languageOptionModels;

  @override
  void initState(BuildContext context) {
    languageOptionModels =
        FlutterFlowDynamicModels(() => LanguageOptionModel());
  }

  @override
  void dispose() {
    languageOptionModels.dispose();
  }
}
