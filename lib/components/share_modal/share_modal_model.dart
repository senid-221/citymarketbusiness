import '/components/socialmedia_card/socialmedia_card_widget.dart';
import '/components/user_card/user_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'share_modal_widget.dart' show ShareModalWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShareModalModel extends FlutterFlowModel<ShareModalWidget> {
  ///  Local state fields for this component.

  String sector = 'NA';

  ///  State fields for stateful widgets in this component.

  // Model for UserCard component.
  late UserCardModel userCardModel1;
  // Model for UserCard component.
  late UserCardModel userCardModel2;
  // Model for UserCard component.
  late UserCardModel userCardModel3;
  // Model for UserCard component.
  late UserCardModel userCardModel4;
  // Model for UserCard component.
  late UserCardModel userCardModel5;
  // Model for UserCard component.
  late UserCardModel userCardModel6;
  // Model for UserCard component.
  late UserCardModel userCardModel7;
  // Model for UserCard component.
  late UserCardModel userCardModel8;
  // Model for SocialmediaCard component.
  late SocialmediaCardModel socialmediaCardModel1;
  // Model for SocialmediaCard component.
  late SocialmediaCardModel socialmediaCardModel2;
  // Model for SocialmediaCard component.
  late SocialmediaCardModel socialmediaCardModel3;
  // Model for SocialmediaCard component.
  late SocialmediaCardModel socialmediaCardModel4;
  // Model for SocialmediaCard component.
  late SocialmediaCardModel socialmediaCardModel5;

  @override
  void initState(BuildContext context) {
    userCardModel1 = createModel(context, () => UserCardModel());
    userCardModel2 = createModel(context, () => UserCardModel());
    userCardModel3 = createModel(context, () => UserCardModel());
    userCardModel4 = createModel(context, () => UserCardModel());
    userCardModel5 = createModel(context, () => UserCardModel());
    userCardModel6 = createModel(context, () => UserCardModel());
    userCardModel7 = createModel(context, () => UserCardModel());
    userCardModel8 = createModel(context, () => UserCardModel());
    socialmediaCardModel1 = createModel(context, () => SocialmediaCardModel());
    socialmediaCardModel2 = createModel(context, () => SocialmediaCardModel());
    socialmediaCardModel3 = createModel(context, () => SocialmediaCardModel());
    socialmediaCardModel4 = createModel(context, () => SocialmediaCardModel());
    socialmediaCardModel5 = createModel(context, () => SocialmediaCardModel());
  }

  @override
  void dispose() {
    userCardModel1.dispose();
    userCardModel2.dispose();
    userCardModel3.dispose();
    userCardModel4.dispose();
    userCardModel5.dispose();
    userCardModel6.dispose();
    userCardModel7.dispose();
    userCardModel8.dispose();
    socialmediaCardModel1.dispose();
    socialmediaCardModel2.dispose();
    socialmediaCardModel3.dispose();
    socialmediaCardModel4.dispose();
    socialmediaCardModel5.dispose();
  }
}
