import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/title_subtitle/title_subtitle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'about_us_widget.dart' show AboutUsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboutUsModel extends FlutterFlowModel<AboutUsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel1;
  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel2;
  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel3;
  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel4;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    titleSubtitleModel1 = createModel(context, () => TitleSubtitleModel());
    titleSubtitleModel2 = createModel(context, () => TitleSubtitleModel());
    titleSubtitleModel3 = createModel(context, () => TitleSubtitleModel());
    titleSubtitleModel4 = createModel(context, () => TitleSubtitleModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    titleSubtitleModel1.dispose();
    titleSubtitleModel2.dispose();
    titleSubtitleModel3.dispose();
    titleSubtitleModel4.dispose();
  }
}
