import '/backend/schema/structs/index.dart';
import '/components/ai_suggested_card/ai_suggested_card_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/custom_button/custom_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'ai_grocery_planner_preview_widget.dart'
    show AiGroceryPlannerPreviewWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AiGroceryPlannerPreviewModel
    extends FlutterFlowModel<AiGroceryPlannerPreviewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Models for AiSuggestedCard dynamic component.
  late FlutterFlowDynamicModels<AiSuggestedCardModel> aiSuggestedCardModels1;
  // Models for AiSuggestedCard dynamic component.
  late FlutterFlowDynamicModels<AiSuggestedCardModel> aiSuggestedCardModels2;
  // Model for CustomButton component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    aiSuggestedCardModels1 =
        FlutterFlowDynamicModels(() => AiSuggestedCardModel());
    aiSuggestedCardModels2 =
        FlutterFlowDynamicModels(() => AiSuggestedCardModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    aiSuggestedCardModels1.dispose();
    aiSuggestedCardModels2.dispose();
    customButtonModel.dispose();
  }
}
