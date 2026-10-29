import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/nav_btn_02/nav_btn02_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'contacts_widget.dart' show ContactsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContactsModel extends FlutterFlowModel<ContactsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for NavBtn_02 component.
  late NavBtn02Model navBtn02Model1;
  // Model for NavBtn_02 component.
  late NavBtn02Model navBtn02Model2;
  // Model for NavBtn_02 component.
  late NavBtn02Model navBtn02Model3;
  // Model for NavBtn_02 component.
  late NavBtn02Model navBtn02Model4;
  // Model for NavBtn_02 component.
  late NavBtn02Model navBtn02Model5;
  // Model for NavBtn_02 component.
  late NavBtn02Model navBtn02Model6;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    navBtn02Model1 = createModel(context, () => NavBtn02Model());
    navBtn02Model2 = createModel(context, () => NavBtn02Model());
    navBtn02Model3 = createModel(context, () => NavBtn02Model());
    navBtn02Model4 = createModel(context, () => NavBtn02Model());
    navBtn02Model5 = createModel(context, () => NavBtn02Model());
    navBtn02Model6 = createModel(context, () => NavBtn02Model());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    navBtn02Model1.dispose();
    navBtn02Model2.dispose();
    navBtn02Model3.dispose();
    navBtn02Model4.dispose();
    navBtn02Model5.dispose();
    navBtn02Model6.dispose();
  }
}
