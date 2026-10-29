import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/confirm_account_delete/confirm_account_delete_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'account_delete_cnf_widget.dart' show AccountDeleteCnfWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountDeleteCnfModel extends FlutterFlowModel<AccountDeleteCnfWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
