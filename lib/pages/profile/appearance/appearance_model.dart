import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/color_selector/color_selector_widget.dart';
import '/components/security_card/security_card_widget.dart';
import '/components/selector/selector_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'appearance_widget.dart' show AppearanceWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppearanceModel extends FlutterFlowModel<AppearanceWidget> {
  ///  Local state fields for this page.

  String colorSelector = 'Forest';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for Selector component.
  late SelectorModel selectorModel1;
  // Model for Selector component.
  late SelectorModel selectorModel2;
  // Model for Selector component.
  late SelectorModel selectorModel3;
  // Model for ColorSelector component.
  late ColorSelectorModel colorSelectorModel1;
  // Model for ColorSelector component.
  late ColorSelectorModel colorSelectorModel2;
  // Model for ColorSelector component.
  late ColorSelectorModel colorSelectorModel3;
  // Model for ColorSelector component.
  late ColorSelectorModel colorSelectorModel4;
  // Model for ColorSelector component.
  late ColorSelectorModel colorSelectorModel5;
  // State field(s) for Slider widget.
  double? sliderValue1;
  // State field(s) for Slider widget.
  double? sliderValue2;
  // Model for SecurityCard component.
  late SecurityCardModel securityCardModel1;
  // Model for SecurityCard component.
  late SecurityCardModel securityCardModel2;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    selectorModel1 = createModel(context, () => SelectorModel());
    selectorModel2 = createModel(context, () => SelectorModel());
    selectorModel3 = createModel(context, () => SelectorModel());
    colorSelectorModel1 = createModel(context, () => ColorSelectorModel());
    colorSelectorModel2 = createModel(context, () => ColorSelectorModel());
    colorSelectorModel3 = createModel(context, () => ColorSelectorModel());
    colorSelectorModel4 = createModel(context, () => ColorSelectorModel());
    colorSelectorModel5 = createModel(context, () => ColorSelectorModel());
    securityCardModel1 = createModel(context, () => SecurityCardModel());
    securityCardModel2 = createModel(context, () => SecurityCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    selectorModel1.dispose();
    selectorModel2.dispose();
    selectorModel3.dispose();
    colorSelectorModel1.dispose();
    colorSelectorModel2.dispose();
    colorSelectorModel3.dispose();
    colorSelectorModel4.dispose();
    colorSelectorModel5.dispose();
    securityCardModel1.dispose();
    securityCardModel2.dispose();
  }
}
