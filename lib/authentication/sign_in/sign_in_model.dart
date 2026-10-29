import '/authentication/components/login_progress_modal/login_progress_modal_widget.dart';
import '/authentication/components/social_login_btn/social_login_btn_widget.dart';
import '/components/custom_button/custom_button_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'sign_in_widget.dart' show SignInWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignInModel extends FlutterFlowModel<SignInWidget> {
  ///  Local state fields for this page.

  String authMethod = 'Sign In';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for CustomButton component.
  late CustomButtonModel customButtonModel;
  // Model for SocialLoginBtn component.
  late SocialLoginBtnModel socialLoginBtnModel1;
  // Model for SocialLoginBtn component.
  late SocialLoginBtnModel socialLoginBtnModel2;
  // Model for SocialLoginBtn component.
  late SocialLoginBtnModel socialLoginBtnModel3;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    customButtonModel = createModel(context, () => CustomButtonModel());
    socialLoginBtnModel1 = createModel(context, () => SocialLoginBtnModel());
    socialLoginBtnModel2 = createModel(context, () => SocialLoginBtnModel());
    socialLoginBtnModel3 = createModel(context, () => SocialLoginBtnModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    customButtonModel.dispose();
    socialLoginBtnModel1.dispose();
    socialLoginBtnModel2.dispose();
    socialLoginBtnModel3.dispose();
  }
}
