import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/informaation_card/informaation_card_widget.dart';
import '/components/security_card/security_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'security_widget.dart' show SecurityWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SecurityModel extends FlutterFlowModel<SecurityWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for SecurityCard component.
  late SecurityCardModel securityCardModel1;
  // Model for InformaationCard component.
  late InformaationCardModel informaationCardModel1;
  // Model for SecurityCard component.
  late SecurityCardModel securityCardModel2;
  // Model for SecurityCard component.
  late SecurityCardModel securityCardModel3;
  // Model for SecurityCard component.
  late SecurityCardModel securityCardModel4;
  // Model for InformaationCard component.
  late InformaationCardModel informaationCardModel2;
  // Model for InformaationCard component.
  late InformaationCardModel informaationCardModel3;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    securityCardModel1 = createModel(context, () => SecurityCardModel());
    informaationCardModel1 =
        createModel(context, () => InformaationCardModel());
    securityCardModel2 = createModel(context, () => SecurityCardModel());
    securityCardModel3 = createModel(context, () => SecurityCardModel());
    securityCardModel4 = createModel(context, () => SecurityCardModel());
    informaationCardModel2 =
        createModel(context, () => InformaationCardModel());
    informaationCardModel3 =
        createModel(context, () => InformaationCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    securityCardModel1.dispose();
    informaationCardModel1.dispose();
    securityCardModel2.dispose();
    securityCardModel3.dispose();
    securityCardModel4.dispose();
    informaationCardModel2.dispose();
    informaationCardModel3.dispose();
  }
}
