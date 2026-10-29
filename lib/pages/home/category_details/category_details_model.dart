import '/backend/schema/structs/index.dart';
import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/fillter_chip_selector/fillter_chip_selector_widget.dart';
import '/components/filter_cips_card/filter_cips_card_widget.dart';
import '/components/sort_by_modal/sort_by_modal_widget.dart';
import '/components/vegitables_card/vegitables_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'category_details_widget.dart' show CategoryDetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoryDetailsModel extends FlutterFlowModel<CategoryDetailsWidget> {
  ///  Local state fields for this page.

  String filterSelector = 'NA';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
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
    appbarModel = createModel(context, () => AppbarModel());
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
    appbarModel.dispose();
    filterCipsCardModel1.dispose();
    filterCipsCardModel2.dispose();
    fillterChipSelectorModel1.dispose();
    fillterChipSelectorModel2.dispose();
    fillterChipSelectorModel3.dispose();
    fillterChipSelectorModel4.dispose();
    vegitablesCardModels.dispose();
  }
}
