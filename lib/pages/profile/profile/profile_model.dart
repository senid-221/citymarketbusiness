import '/components/bg_card/bg_card_widget.dart';
import '/components/logout/logout_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/components/settings_card/settings_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel1;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel2;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel3;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel4;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel5;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel6;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel7;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel8;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel9;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    settingsCardModel1 = createModel(context, () => SettingsCardModel());
    settingsCardModel2 = createModel(context, () => SettingsCardModel());
    settingsCardModel3 = createModel(context, () => SettingsCardModel());
    settingsCardModel4 = createModel(context, () => SettingsCardModel());
    settingsCardModel5 = createModel(context, () => SettingsCardModel());
    settingsCardModel6 = createModel(context, () => SettingsCardModel());
    settingsCardModel7 = createModel(context, () => SettingsCardModel());
    settingsCardModel8 = createModel(context, () => SettingsCardModel());
    settingsCardModel9 = createModel(context, () => SettingsCardModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    settingsCardModel1.dispose();
    settingsCardModel2.dispose();
    settingsCardModel3.dispose();
    settingsCardModel4.dispose();
    settingsCardModel5.dispose();
    settingsCardModel6.dispose();
    settingsCardModel7.dispose();
    settingsCardModel8.dispose();
    settingsCardModel9.dispose();
    navBarModel.dispose();
  }
}
