import '/backend/schema/structs/index.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/category_card_01/category_card01_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/components/recently_viewd_card/recently_viewd_card_widget.dart';
import '/components/selector_04/selector04_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'category_widget.dart' show CategoryWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoryModel extends FlutterFlowModel<CategoryWidget> {
  ///  Local state fields for this page.

  String filter = 'All Categories';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for selector_04 component.
  late Selector04Model selector04Model1;
  // Model for selector_04 component.
  late Selector04Model selector04Model2;
  // Model for selector_04 component.
  late Selector04Model selector04Model3;
  // Model for selector_04 component.
  late Selector04Model selector04Model4;
  // Models for CategoryCard_01 dynamic component.
  late FlutterFlowDynamicModels<CategoryCard01Model> categoryCard01Models;
  // Models for RecentlyViewdCard dynamic component.
  late FlutterFlowDynamicModels<RecentlyViewdCardModel> recentlyViewdCardModels;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    selector04Model1 = createModel(context, () => Selector04Model());
    selector04Model2 = createModel(context, () => Selector04Model());
    selector04Model3 = createModel(context, () => Selector04Model());
    selector04Model4 = createModel(context, () => Selector04Model());
    categoryCard01Models =
        FlutterFlowDynamicModels(() => CategoryCard01Model());
    recentlyViewdCardModels =
        FlutterFlowDynamicModels(() => RecentlyViewdCardModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    selector04Model1.dispose();
    selector04Model2.dispose();
    selector04Model3.dispose();
    selector04Model4.dispose();
    categoryCard01Models.dispose();
    recentlyViewdCardModels.dispose();
    navBarModel.dispose();
  }
}
