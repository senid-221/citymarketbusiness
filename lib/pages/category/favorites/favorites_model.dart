import '/backend/schema/structs/index.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/favourits_card/favourits_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'favorites_widget.dart' show FavoritesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavoritesModel extends FlutterFlowModel<FavoritesWidget> {
  ///  Local state fields for this page.

  String gender = 'Male';

  String active = 'NA';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Models for FavouritsCard dynamic component.
  late FlutterFlowDynamicModels<FavouritsCardModel> favouritsCardModels;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    favouritsCardModels = FlutterFlowDynamicModels(() => FavouritsCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    favouritsCardModels.dispose();
  }
}
