import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/menu_card_02/menu_card02_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'about_the_app_widget.dart' show AboutTheAppWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboutTheAppModel extends FlutterFlowModel<AboutTheAppWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for MenuCard_02 component.
  late MenuCard02Model menuCard02Model1;
  // Model for MenuCard_02 component.
  late MenuCard02Model menuCard02Model2;
  // Model for MenuCard_02 component.
  late MenuCard02Model menuCard02Model3;
  // Model for MenuCard_02 component.
  late MenuCard02Model menuCard02Model4;
  // Model for MenuCard_02 component.
  late MenuCard02Model menuCard02Model5;
  // Model for MenuCard_02 component.
  late MenuCard02Model menuCard02Model6;
  // Model for MenuCard_02 component.
  late MenuCard02Model menuCard02Model7;
  // Model for MenuCard_02 component.
  late MenuCard02Model menuCard02Model8;
  // Model for MenuCard_02 component.
  late MenuCard02Model menuCard02Model9;
  // Model for MenuCard_02 component.
  late MenuCard02Model menuCard02Model10;
  // Model for MenuCard_02 component.
  late MenuCard02Model menuCard02Model11;
  // Model for MenuCard_02 component.
  late MenuCard02Model menuCard02Model12;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    menuCard02Model1 = createModel(context, () => MenuCard02Model());
    menuCard02Model2 = createModel(context, () => MenuCard02Model());
    menuCard02Model3 = createModel(context, () => MenuCard02Model());
    menuCard02Model4 = createModel(context, () => MenuCard02Model());
    menuCard02Model5 = createModel(context, () => MenuCard02Model());
    menuCard02Model6 = createModel(context, () => MenuCard02Model());
    menuCard02Model7 = createModel(context, () => MenuCard02Model());
    menuCard02Model8 = createModel(context, () => MenuCard02Model());
    menuCard02Model9 = createModel(context, () => MenuCard02Model());
    menuCard02Model10 = createModel(context, () => MenuCard02Model());
    menuCard02Model11 = createModel(context, () => MenuCard02Model());
    menuCard02Model12 = createModel(context, () => MenuCard02Model());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    menuCard02Model1.dispose();
    menuCard02Model2.dispose();
    menuCard02Model3.dispose();
    menuCard02Model4.dispose();
    menuCard02Model5.dispose();
    menuCard02Model6.dispose();
    menuCard02Model7.dispose();
    menuCard02Model8.dispose();
    menuCard02Model9.dispose();
    menuCard02Model10.dispose();
    menuCard02Model11.dispose();
    menuCard02Model12.dispose();
  }
}
