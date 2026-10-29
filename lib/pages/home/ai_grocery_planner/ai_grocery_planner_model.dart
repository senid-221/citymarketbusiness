import '/components/ai_selector_card_01/ai_selector_card01_widget.dart';
import '/components/ai_selector_card_02/ai_selector_card02_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/custom_button/custom_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'ai_grocery_planner_widget.dart' show AiGroceryPlannerWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AiGroceryPlannerModel extends FlutterFlowModel<AiGroceryPlannerWidget> {
  ///  Local state fields for this page.

  String selector1 = 'NA';

  String selector2 = 'NA';

  String selector3 = 'NA';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for AiSelectorCard_01 component.
  late AiSelectorCard01Model aiSelectorCard01Model1;
  // Model for AiSelectorCard_01 component.
  late AiSelectorCard01Model aiSelectorCard01Model2;
  // Model for AiSelectorCard_01 component.
  late AiSelectorCard01Model aiSelectorCard01Model3;
  // Model for AiSelectorCard_02 component.
  late AiSelectorCard02Model aiSelectorCard02Model1;
  // Model for AiSelectorCard_02 component.
  late AiSelectorCard02Model aiSelectorCard02Model2;
  // Model for AiSelectorCard_02 component.
  late AiSelectorCard02Model aiSelectorCard02Model3;
  // Model for AiSelectorCard_02 component.
  late AiSelectorCard02Model aiSelectorCard02Model4;
  // Model for AiSelectorCard_02 component.
  late AiSelectorCard02Model aiSelectorCard02Model5;
  // Model for AiSelectorCard_02 component.
  late AiSelectorCard02Model aiSelectorCard02Model6;
  // Model for CustomButton component.
  late CustomButtonModel customButtonModel1;
  // Model for CustomButton component.
  late CustomButtonModel customButtonModel2;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    aiSelectorCard01Model1 =
        createModel(context, () => AiSelectorCard01Model());
    aiSelectorCard01Model2 =
        createModel(context, () => AiSelectorCard01Model());
    aiSelectorCard01Model3 =
        createModel(context, () => AiSelectorCard01Model());
    aiSelectorCard02Model1 =
        createModel(context, () => AiSelectorCard02Model());
    aiSelectorCard02Model2 =
        createModel(context, () => AiSelectorCard02Model());
    aiSelectorCard02Model3 =
        createModel(context, () => AiSelectorCard02Model());
    aiSelectorCard02Model4 =
        createModel(context, () => AiSelectorCard02Model());
    aiSelectorCard02Model5 =
        createModel(context, () => AiSelectorCard02Model());
    aiSelectorCard02Model6 =
        createModel(context, () => AiSelectorCard02Model());
    customButtonModel1 = createModel(context, () => CustomButtonModel());
    customButtonModel2 = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    aiSelectorCard01Model1.dispose();
    aiSelectorCard01Model2.dispose();
    aiSelectorCard01Model3.dispose();
    aiSelectorCard02Model1.dispose();
    aiSelectorCard02Model2.dispose();
    aiSelectorCard02Model3.dispose();
    aiSelectorCard02Model4.dispose();
    aiSelectorCard02Model5.dispose();
    aiSelectorCard02Model6.dispose();
    customButtonModel1.dispose();
    customButtonModel2.dispose();
  }
}
