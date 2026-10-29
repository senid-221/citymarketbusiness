import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/nav_btn_03/nav_btn03_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'account_delete_widget.dart' show AccountDeleteWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountDeleteModel extends FlutterFlowModel<AccountDeleteWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for NavBtn_03 component.
  late NavBtn03Model navBtn03Model1;
  // Model for NavBtn_03 component.
  late NavBtn03Model navBtn03Model2;
  // Model for NavBtn_03 component.
  late NavBtn03Model navBtn03Model3;
  // Model for NavBtn_03 component.
  late NavBtn03Model navBtn03Model4;
  // Model for NavBtn_03 component.
  late NavBtn03Model navBtn03Model5;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    navBtn03Model1 = createModel(context, () => NavBtn03Model());
    navBtn03Model2 = createModel(context, () => NavBtn03Model());
    navBtn03Model3 = createModel(context, () => NavBtn03Model());
    navBtn03Model4 = createModel(context, () => NavBtn03Model());
    navBtn03Model5 = createModel(context, () => NavBtn03Model());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    navBtn03Model1.dispose();
    navBtn03Model2.dispose();
    navBtn03Model3.dispose();
    navBtn03Model4.dispose();
    navBtn03Model5.dispose();
  }
}
