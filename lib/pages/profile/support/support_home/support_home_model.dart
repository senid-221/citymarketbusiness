import '/backend/schema/enums/enums.dart';
import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/nav_btn_05/nav_btn05_widget.dart';
import '/components/ticket_card/ticket_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'support_home_widget.dart' show SupportHomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SupportHomeModel extends FlutterFlowModel<SupportHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for TicketCard component.
  late TicketCardModel ticketCardModel1;
  // Model for TicketCard component.
  late TicketCardModel ticketCardModel2;
  // Model for NavBtn_05 component.
  late NavBtn05Model navBtn05Model1;
  // Model for NavBtn_05 component.
  late NavBtn05Model navBtn05Model2;
  // Model for NavBtn_05 component.
  late NavBtn05Model navBtn05Model3;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    ticketCardModel1 = createModel(context, () => TicketCardModel());
    ticketCardModel2 = createModel(context, () => TicketCardModel());
    navBtn05Model1 = createModel(context, () => NavBtn05Model());
    navBtn05Model2 = createModel(context, () => NavBtn05Model());
    navBtn05Model3 = createModel(context, () => NavBtn05Model());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    ticketCardModel1.dispose();
    ticketCardModel2.dispose();
    navBtn05Model1.dispose();
    navBtn05Model2.dispose();
    navBtn05Model3.dispose();
  }
}
