import '/components/appbar/appbar_widget.dart';
import '/components/dial_code/dial_code_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dial_codes_widget.dart' show DialCodesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DialCodesModel extends FlutterFlowModel<DialCodesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Appbar component.
  late AppbarModel appbarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for DialCode dynamic component.
  late FlutterFlowDynamicModels<DialCodeModel> dialCodeModels;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
    dialCodeModels = FlutterFlowDynamicModels(() => DialCodeModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    dialCodeModels.dispose();
  }
}
