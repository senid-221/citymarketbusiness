import '/components/app_name/app_name_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'splash_widget.dart' show SplashWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class SplashModel extends FlutterFlowModel<SplashWidget> {
  ///  Local state fields for this page.

  double progress = 0.0;

  ///  State fields for stateful widgets in this page.

  // Model for AppName component.
  late AppNameModel appNameModel;

  @override
  void initState(BuildContext context) {
    appNameModel = createModel(context, () => AppNameModel());
  }

  @override
  void dispose() {
    appNameModel.dispose();
  }
}
