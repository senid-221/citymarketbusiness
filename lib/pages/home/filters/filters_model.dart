import '/backend/schema/structs/index.dart';
import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/category_selector_card/category_selector_card_widget.dart';
import '/components/choice_chip/choice_chip_widget.dart';
import '/components/custom_button/custom_button_widget.dart';
import '/components/customer_review_selector/customer_review_selector_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'filters_widget.dart' show FiltersWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FiltersModel extends FlutterFlowModel<FiltersWidget> {
  ///  Local state fields for this page.

  String categorySelector = 'NA';

  String rating = 'NA';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Models for CategorySelectorCard dynamic component.
  late FlutterFlowDynamicModels<CategorySelectorCardModel>
      categorySelectorCardModels;
  // Model for CustomerReviewSelector component.
  late CustomerReviewSelectorModel customerReviewSelectorModel1;
  // Model for CustomerReviewSelector component.
  late CustomerReviewSelectorModel customerReviewSelectorModel2;
  // Model for CustomerReviewSelector component.
  late CustomerReviewSelectorModel customerReviewSelectorModel3;
  // Model for CustomerReviewSelector component.
  late CustomerReviewSelectorModel customerReviewSelectorModel4;
  // Model for CustomerReviewSelector component.
  late CustomerReviewSelectorModel customerReviewSelectorModel5;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel1;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel2;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel3;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel4;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel5;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel6;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel7;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel8;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel9;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel10;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel11;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel12;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel13;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel14;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel15;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel16;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel17;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel18;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel19;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel20;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel21;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel22;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel23;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel24;
  // Model for ChoiceChip component.
  late ChoiceChipModel choiceChipModel25;
  // Model for CustomButton component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    categorySelectorCardModels =
        FlutterFlowDynamicModels(() => CategorySelectorCardModel());
    customerReviewSelectorModel1 =
        createModel(context, () => CustomerReviewSelectorModel());
    customerReviewSelectorModel2 =
        createModel(context, () => CustomerReviewSelectorModel());
    customerReviewSelectorModel3 =
        createModel(context, () => CustomerReviewSelectorModel());
    customerReviewSelectorModel4 =
        createModel(context, () => CustomerReviewSelectorModel());
    customerReviewSelectorModel5 =
        createModel(context, () => CustomerReviewSelectorModel());
    choiceChipModel1 = createModel(context, () => ChoiceChipModel());
    choiceChipModel2 = createModel(context, () => ChoiceChipModel());
    choiceChipModel3 = createModel(context, () => ChoiceChipModel());
    choiceChipModel4 = createModel(context, () => ChoiceChipModel());
    choiceChipModel5 = createModel(context, () => ChoiceChipModel());
    choiceChipModel6 = createModel(context, () => ChoiceChipModel());
    choiceChipModel7 = createModel(context, () => ChoiceChipModel());
    choiceChipModel8 = createModel(context, () => ChoiceChipModel());
    choiceChipModel9 = createModel(context, () => ChoiceChipModel());
    choiceChipModel10 = createModel(context, () => ChoiceChipModel());
    choiceChipModel11 = createModel(context, () => ChoiceChipModel());
    choiceChipModel12 = createModel(context, () => ChoiceChipModel());
    choiceChipModel13 = createModel(context, () => ChoiceChipModel());
    choiceChipModel14 = createModel(context, () => ChoiceChipModel());
    choiceChipModel15 = createModel(context, () => ChoiceChipModel());
    choiceChipModel16 = createModel(context, () => ChoiceChipModel());
    choiceChipModel17 = createModel(context, () => ChoiceChipModel());
    choiceChipModel18 = createModel(context, () => ChoiceChipModel());
    choiceChipModel19 = createModel(context, () => ChoiceChipModel());
    choiceChipModel20 = createModel(context, () => ChoiceChipModel());
    choiceChipModel21 = createModel(context, () => ChoiceChipModel());
    choiceChipModel22 = createModel(context, () => ChoiceChipModel());
    choiceChipModel23 = createModel(context, () => ChoiceChipModel());
    choiceChipModel24 = createModel(context, () => ChoiceChipModel());
    choiceChipModel25 = createModel(context, () => ChoiceChipModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    categorySelectorCardModels.dispose();
    customerReviewSelectorModel1.dispose();
    customerReviewSelectorModel2.dispose();
    customerReviewSelectorModel3.dispose();
    customerReviewSelectorModel4.dispose();
    customerReviewSelectorModel5.dispose();
    choiceChipModel1.dispose();
    choiceChipModel2.dispose();
    choiceChipModel3.dispose();
    choiceChipModel4.dispose();
    choiceChipModel5.dispose();
    choiceChipModel6.dispose();
    choiceChipModel7.dispose();
    choiceChipModel8.dispose();
    choiceChipModel9.dispose();
    choiceChipModel10.dispose();
    choiceChipModel11.dispose();
    choiceChipModel12.dispose();
    choiceChipModel13.dispose();
    choiceChipModel14.dispose();
    choiceChipModel15.dispose();
    choiceChipModel16.dispose();
    choiceChipModel17.dispose();
    choiceChipModel18.dispose();
    choiceChipModel19.dispose();
    choiceChipModel20.dispose();
    choiceChipModel21.dispose();
    choiceChipModel22.dispose();
    choiceChipModel23.dispose();
    choiceChipModel24.dispose();
    choiceChipModel25.dispose();
    customButtonModel.dispose();
  }
}
