import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/payment_methidscard/payment_methidscard_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'payment_methods_widget.dart' show PaymentMethodsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentMethodsModel extends FlutterFlowModel<PaymentMethodsWidget> {
  ///  Local state fields for this page.

  String paymentseleector = 'NA';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for PaymentMethidscard component.
  late PaymentMethidscardModel paymentMethidscardModel1;
  // Model for PaymentMethidscard component.
  late PaymentMethidscardModel paymentMethidscardModel2;
  // Model for PaymentMethidscard component.
  late PaymentMethidscardModel paymentMethidscardModel3;
  // Model for PaymentMethidscard component.
  late PaymentMethidscardModel paymentMethidscardModel4;
  // Model for PaymentMethidscard component.
  late PaymentMethidscardModel paymentMethidscardModel5;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    paymentMethidscardModel1 =
        createModel(context, () => PaymentMethidscardModel());
    paymentMethidscardModel2 =
        createModel(context, () => PaymentMethidscardModel());
    paymentMethidscardModel3 =
        createModel(context, () => PaymentMethidscardModel());
    paymentMethidscardModel4 =
        createModel(context, () => PaymentMethidscardModel());
    paymentMethidscardModel5 =
        createModel(context, () => PaymentMethidscardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    paymentMethidscardModel1.dispose();
    paymentMethidscardModel2.dispose();
    paymentMethidscardModel3.dispose();
    paymentMethidscardModel4.dispose();
    paymentMethidscardModel5.dispose();
  }
}
