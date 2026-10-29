import '/backend/schema/structs/index.dart';
import '/components/banner_card/banner_card_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/category_card_02/category_card02_widget.dart';
import '/components/freash_vagitaabls_card/freash_vagitaabls_card_widget.dart';
import '/components/location_modal/location_modal_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/components/vegitables_card/vegitables_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  String choiceChips = 'All';

  String active = 'Hair';

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
  // Model for BannerCard component.
  late BannerCardModel bannerCardModel1;
  // Model for BannerCard component.
  late BannerCardModel bannerCardModel2;
  // Model for BannerCard component.
  late BannerCardModel bannerCardModel3;
  // Model for CategoryCard_02 component.
  late CategoryCard02Model categoryCard02Model1;
  // Model for CategoryCard_02 component.
  late CategoryCard02Model categoryCard02Model2;
  // Model for CategoryCard_02 component.
  late CategoryCard02Model categoryCard02Model3;
  // Model for CategoryCard_02 component.
  late CategoryCard02Model categoryCard02Model4;
  // Model for CategoryCard_02 component.
  late CategoryCard02Model categoryCard02Model5;
  // Model for CategoryCard_02 component.
  late CategoryCard02Model categoryCard02Model6;
  // Model for CategoryCard_02 component.
  late CategoryCard02Model categoryCard02Model7;
  // Models for FreashVagitaablsCard dynamic component.
  late FlutterFlowDynamicModels<FreashVagitaablsCardModel>
      freashVagitaablsCardModels;
  // Models for VegitablesCard dynamic component.
  late FlutterFlowDynamicModels<VegitablesCardModel> vegitablesCardModels;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    bannerCardModel1 = createModel(context, () => BannerCardModel());
    bannerCardModel2 = createModel(context, () => BannerCardModel());
    bannerCardModel3 = createModel(context, () => BannerCardModel());
    categoryCard02Model1 = createModel(context, () => CategoryCard02Model());
    categoryCard02Model2 = createModel(context, () => CategoryCard02Model());
    categoryCard02Model3 = createModel(context, () => CategoryCard02Model());
    categoryCard02Model4 = createModel(context, () => CategoryCard02Model());
    categoryCard02Model5 = createModel(context, () => CategoryCard02Model());
    categoryCard02Model6 = createModel(context, () => CategoryCard02Model());
    categoryCard02Model7 = createModel(context, () => CategoryCard02Model());
    freashVagitaablsCardModels =
        FlutterFlowDynamicModels(() => FreashVagitaablsCardModel());
    vegitablesCardModels =
        FlutterFlowDynamicModels(() => VegitablesCardModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    bannerCardModel1.dispose();
    bannerCardModel2.dispose();
    bannerCardModel3.dispose();
    categoryCard02Model1.dispose();
    categoryCard02Model2.dispose();
    categoryCard02Model3.dispose();
    categoryCard02Model4.dispose();
    categoryCard02Model5.dispose();
    categoryCard02Model6.dispose();
    categoryCard02Model7.dispose();
    freashVagitaablsCardModels.dispose();
    vegitablesCardModels.dispose();
    navBarModel.dispose();
  }
}
