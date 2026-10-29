import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/f_a_q_card/f_a_q_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'f_a_qs_widget.dart' show FAQsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FAQsModel extends FlutterFlowModel<FAQsWidget> {
  ///  Local state fields for this page.

  String selectedTab = 'FAQ';

  String faqsOpen = 'What Is Fixify?';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel1;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel2;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel3;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel4;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel5;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel6;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel7;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel8;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel9;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel10;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel11;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel12;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel13;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel14;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel15;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel16;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel17;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel18;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel19;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    fAQCardModel1 = createModel(context, () => FAQCardModel());
    fAQCardModel2 = createModel(context, () => FAQCardModel());
    fAQCardModel3 = createModel(context, () => FAQCardModel());
    fAQCardModel4 = createModel(context, () => FAQCardModel());
    fAQCardModel5 = createModel(context, () => FAQCardModel());
    fAQCardModel6 = createModel(context, () => FAQCardModel());
    fAQCardModel7 = createModel(context, () => FAQCardModel());
    fAQCardModel8 = createModel(context, () => FAQCardModel());
    fAQCardModel9 = createModel(context, () => FAQCardModel());
    fAQCardModel10 = createModel(context, () => FAQCardModel());
    fAQCardModel11 = createModel(context, () => FAQCardModel());
    fAQCardModel12 = createModel(context, () => FAQCardModel());
    fAQCardModel13 = createModel(context, () => FAQCardModel());
    fAQCardModel14 = createModel(context, () => FAQCardModel());
    fAQCardModel15 = createModel(context, () => FAQCardModel());
    fAQCardModel16 = createModel(context, () => FAQCardModel());
    fAQCardModel17 = createModel(context, () => FAQCardModel());
    fAQCardModel18 = createModel(context, () => FAQCardModel());
    fAQCardModel19 = createModel(context, () => FAQCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    fAQCardModel1.dispose();
    fAQCardModel2.dispose();
    fAQCardModel3.dispose();
    fAQCardModel4.dispose();
    fAQCardModel5.dispose();
    fAQCardModel6.dispose();
    fAQCardModel7.dispose();
    fAQCardModel8.dispose();
    fAQCardModel9.dispose();
    fAQCardModel10.dispose();
    fAQCardModel11.dispose();
    fAQCardModel12.dispose();
    fAQCardModel13.dispose();
    fAQCardModel14.dispose();
    fAQCardModel15.dispose();
    fAQCardModel16.dispose();
    fAQCardModel17.dispose();
    fAQCardModel18.dispose();
    fAQCardModel19.dispose();
  }
}
