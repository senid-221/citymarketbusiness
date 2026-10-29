import '/authentication/components/language_modal/language_modal_widget.dart';
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
import 'sign_in_mobile_widget.dart' show SignInMobileWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignInMobileModel extends FlutterFlowModel<SignInMobileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
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
    customButtonModel = createModel(context, () => CustomButtonModel());
    socialLoginBtnModel1 = createModel(context, () => SocialLoginBtnModel());
    socialLoginBtnModel2 = createModel(context, () => SocialLoginBtnModel());
    socialLoginBtnModel3 = createModel(context, () => SocialLoginBtnModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    customButtonModel.dispose();
    socialLoginBtnModel1.dispose();
    socialLoginBtnModel2.dispose();
    socialLoginBtnModel3.dispose();
  }
}
