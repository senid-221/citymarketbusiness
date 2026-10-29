import '/backend/schema/structs/index.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/fillter_chip_selector/fillter_chip_selector_widget.dart';
import '/components/filter_cips_card/filter_cips_card_widget.dart';
import '/components/sort_by_modal/sort_by_modal_widget.dart';
import '/components/vegitables_card/vegitables_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'search_result_widget.dart' show SearchResultWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchResultModel extends FlutterFlowModel<SearchResultWidget> {
  ///  Local state fields for this page.

  String filterSelector = 'NA';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for FilterCipsCard component.
  late FilterCipsCardModel filterCipsCardModel1;
  // Model for FilterCipsCard component.
  late FilterCipsCardModel filterCipsCardModel2;
  // Model for FillterChipSelector component.
  late FillterChipSelectorModel fillterChipSelectorModel1;
  // Model for FillterChipSelector component.
  late FillterChipSelectorModel fillterChipSelectorModel2;
  // Model for FillterChipSelector component.
  late FillterChipSelectorModel fillterChipSelectorModel3;
  // Model for FillterChipSelector component.
  late FillterChipSelectorModel fillterChipSelectorModel4;
  // Models for VegitablesCard dynamic component.
  late FlutterFlowDynamicModels<VegitablesCardModel> vegitablesCardModels;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    filterCipsCardModel1 = createModel(context, () => FilterCipsCardModel());
    filterCipsCardModel2 = createModel(context, () => FilterCipsCardModel());
    fillterChipSelectorModel1 =
        createModel(context, () => FillterChipSelectorModel());
    fillterChipSelectorModel2 =
        createModel(context, () => FillterChipSelectorModel());
    fillterChipSelectorModel3 =
        createModel(context, () => FillterChipSelectorModel());
    fillterChipSelectorModel4 =
        createModel(context, () => FillterChipSelectorModel());
    vegitablesCardModels =
        FlutterFlowDynamicModels(() => VegitablesCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    filterCipsCardModel1.dispose();
    filterCipsCardModel2.dispose();
    fillterChipSelectorModel1.dispose();
    fillterChipSelectorModel2.dispose();
    fillterChipSelectorModel3.dispose();
    fillterChipSelectorModel4.dispose();
    vegitablesCardModels.dispose();
  }
}
