import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/message/message_widget.dart';
import '/components/more_ticket_details/more_ticket_details_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'ticket_details_widget.dart' show TicketDetailsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TicketDetailsModel extends FlutterFlowModel<TicketDetailsWidget> {
  ///  Local state fields for this page.

  bool seeMore = false;

  String issueText =
      'Payment processed, but no order confirmation received or visible in the \"My Orders\" section. Need assistance to confirm or refund the order.';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for Message component.
  late MessageModel messageModel1;
  // Model for Message component.
  late MessageModel messageModel2;
  // Model for Message component.
  late MessageModel messageModel3;
  // Model for Message component.
  late MessageModel messageModel4;
  // Model for Message component.
  late MessageModel messageModel5;
  // Model for Message component.
  late MessageModel messageModel6;
  // Model for Message component.
  late MessageModel messageModel7;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    messageModel1 = createModel(context, () => MessageModel());
    messageModel2 = createModel(context, () => MessageModel());
    messageModel3 = createModel(context, () => MessageModel());
    messageModel4 = createModel(context, () => MessageModel());
    messageModel5 = createModel(context, () => MessageModel());
    messageModel6 = createModel(context, () => MessageModel());
    messageModel7 = createModel(context, () => MessageModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    messageModel1.dispose();
    messageModel2.dispose();
    messageModel3.dispose();
    messageModel4.dispose();
    messageModel5.dispose();
    messageModel6.dispose();
    messageModel7.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
