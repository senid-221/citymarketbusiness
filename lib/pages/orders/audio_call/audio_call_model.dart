import '/components/bg_card/bg_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'audio_call_widget.dart' show AudioCallWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AudioCallModel extends FlutterFlowModel<AudioCallWidget> {
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
