import '/backend/schema/enums/enums.dart';
import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/ticket_card/ticket_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'tickets_widget.dart' show TicketsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TicketsModel extends FlutterFlowModel<TicketsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for TicketCard component.
  late TicketCardModel ticketCardModel1;
  // Model for TicketCard component.
  late TicketCardModel ticketCardModel2;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    ticketCardModel1 = createModel(context, () => TicketCardModel());
    ticketCardModel2 = createModel(context, () => TicketCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    ticketCardModel1.dispose();
    ticketCardModel2.dispose();
  }
}
