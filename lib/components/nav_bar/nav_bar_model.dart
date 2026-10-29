import '/components/nav_btn/nav_btn_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'nav_bar_widget.dart' show NavBarWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavBarModel extends FlutterFlowModel<NavBarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for NavBtn component.
  late NavBtnModel navBtnModel1;
  // Model for NavBtn component.
  late NavBtnModel navBtnModel2;
  // Model for NavBtn component.
  late NavBtnModel navBtnModel3;
  // Model for NavBtn component.
  late NavBtnModel navBtnModel4;
  // Model for NavBtn component.
  late NavBtnModel navBtnModel5;

  @override
  void initState(BuildContext context) {
    navBtnModel1 = createModel(context, () => NavBtnModel());
    navBtnModel2 = createModel(context, () => NavBtnModel());
    navBtnModel3 = createModel(context, () => NavBtnModel());
    navBtnModel4 = createModel(context, () => NavBtnModel());
    navBtnModel5 = createModel(context, () => NavBtnModel());
  }

  @override
  void dispose() {
    navBtnModel1.dispose();
    navBtnModel2.dispose();
    navBtnModel3.dispose();
    navBtnModel4.dispose();
    navBtnModel5.dispose();
  }
}
