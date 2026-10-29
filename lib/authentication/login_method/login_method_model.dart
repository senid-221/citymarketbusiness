import '/components/social_sign_in/social_sign_in_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'login_method_widget.dart' show LoginMethodWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginMethodModel extends FlutterFlowModel<LoginMethodWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SocialSignIn component.
  late SocialSignInModel socialSignInModel1;
  // Model for SocialSignIn component.
  late SocialSignInModel socialSignInModel2;

  @override
  void initState(BuildContext context) {
    socialSignInModel1 = createModel(context, () => SocialSignInModel());
    socialSignInModel2 = createModel(context, () => SocialSignInModel());
  }

  @override
  void dispose() {
    socialSignInModel1.dispose();
    socialSignInModel2.dispose();
  }
}
