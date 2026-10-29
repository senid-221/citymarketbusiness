import '/components/bg_card/bg_card_widget.dart';
import '/components/cancel_order_modal/cancel_order_modal_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'order_details02_widget.dart' show OrderDetails02Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class OrderDetails02Model extends FlutterFlowModel<OrderDetails02Widget> {
  ///  Local state fields for this page.

  String deliveryTime = 'Express';

  String tipSelector = 'Not now';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
  }
}
