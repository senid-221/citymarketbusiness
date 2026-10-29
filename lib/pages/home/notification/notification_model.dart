import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/notification_card/notification_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'notification_widget.dart' show NotificationWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationModel extends FlutterFlowModel<NotificationWidget> {
  ///  Local state fields for this page.

  String gender = 'Male';

  String active = 'NA';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel1;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel2;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel3;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel4;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel5;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel6;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    notificationCardModel1 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel2 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel3 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel4 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel5 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel6 =
        createModel(context, () => NotificationCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    notificationCardModel1.dispose();
    notificationCardModel2.dispose();
    notificationCardModel3.dispose();
    notificationCardModel4.dispose();
    notificationCardModel5.dispose();
    notificationCardModel6.dispose();
  }
}
