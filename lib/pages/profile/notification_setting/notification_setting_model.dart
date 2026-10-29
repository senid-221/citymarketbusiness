import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/security_card/security_card_widget.dart';
import '/components/tab_selector_03/tab_selector03_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'notification_setting_widget.dart' show NotificationSettingWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationSettingModel
    extends FlutterFlowModel<NotificationSettingWidget> {
  ///  Local state fields for this page.

  String selector = 'Balanced';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for TabSelector_03 component.
  late TabSelector03Model tabSelector03Model1;
  // Model for TabSelector_03 component.
  late TabSelector03Model tabSelector03Model2;
  // Model for TabSelector_03 component.
  late TabSelector03Model tabSelector03Model3;
  // Model for SecurityCard component.
  late SecurityCardModel securityCardModel1;
  // Model for SecurityCard component.
  late SecurityCardModel securityCardModel2;
  // Model for SecurityCard component.
  late SecurityCardModel securityCardModel3;
  // Model for SecurityCard component.
  late SecurityCardModel securityCardModel4;
  // Model for SecurityCard component.
  late SecurityCardModel securityCardModel5;
  // Model for SecurityCard component.
  late SecurityCardModel securityCardModel6;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    tabSelector03Model1 = createModel(context, () => TabSelector03Model());
    tabSelector03Model2 = createModel(context, () => TabSelector03Model());
    tabSelector03Model3 = createModel(context, () => TabSelector03Model());
    securityCardModel1 = createModel(context, () => SecurityCardModel());
    securityCardModel2 = createModel(context, () => SecurityCardModel());
    securityCardModel3 = createModel(context, () => SecurityCardModel());
    securityCardModel4 = createModel(context, () => SecurityCardModel());
    securityCardModel5 = createModel(context, () => SecurityCardModel());
    securityCardModel6 = createModel(context, () => SecurityCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    tabSelector03Model1.dispose();
    tabSelector03Model2.dispose();
    tabSelector03Model3.dispose();
    securityCardModel1.dispose();
    securityCardModel2.dispose();
    securityCardModel3.dispose();
    securityCardModel4.dispose();
    securityCardModel5.dispose();
    securityCardModel6.dispose();
  }
}
