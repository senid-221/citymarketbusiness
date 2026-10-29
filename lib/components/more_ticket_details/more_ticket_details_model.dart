import '/components/nav_btn_08/nav_btn08_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'more_ticket_details_widget.dart' show MoreTicketDetailsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MoreTicketDetailsModel extends FlutterFlowModel<MoreTicketDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for NavBtn_08 component.
  late NavBtn08Model navBtn08Model1;
  // Model for NavBtn_08 component.
  late NavBtn08Model navBtn08Model2;

  @override
  void initState(BuildContext context) {
    navBtn08Model1 = createModel(context, () => NavBtn08Model());
    navBtn08Model2 = createModel(context, () => NavBtn08Model());
  }

  @override
  void dispose() {
    navBtn08Model1.dispose();
    navBtn08Model2.dispose();
  }
}
