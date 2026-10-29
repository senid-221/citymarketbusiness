import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/custom_button/custom_button_widget.dart';
import '/components/payment_method_selector_card/payment_method_selector_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'payment_method_selector_widget.dart' show PaymentMethodSelectorWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentMethodSelectorModel
    extends FlutterFlowModel<PaymentMethodSelectorWidget> {
  ///  Local state fields for this page.

  String paymentseleector = 'NA';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for PaymentMethodSelectorCard component.
  late PaymentMethodSelectorCardModel paymentMethodSelectorCardModel1;
  // Model for PaymentMethodSelectorCard component.
  late PaymentMethodSelectorCardModel paymentMethodSelectorCardModel2;
  // Model for PaymentMethodSelectorCard component.
  late PaymentMethodSelectorCardModel paymentMethodSelectorCardModel3;
  // Model for PaymentMethodSelectorCard component.
  late PaymentMethodSelectorCardModel paymentMethodSelectorCardModel4;
  // Model for PaymentMethodSelectorCard component.
  late PaymentMethodSelectorCardModel paymentMethodSelectorCardModel5;
  // Model for PaymentMethodSelectorCard component.
  late PaymentMethodSelectorCardModel paymentMethodSelectorCardModel6;
  // Model for PaymentMethodSelectorCard component.
  late PaymentMethodSelectorCardModel paymentMethodSelectorCardModel7;
  // Model for CustomButton component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    paymentMethodSelectorCardModel1 =
        createModel(context, () => PaymentMethodSelectorCardModel());
    paymentMethodSelectorCardModel2 =
        createModel(context, () => PaymentMethodSelectorCardModel());
    paymentMethodSelectorCardModel3 =
        createModel(context, () => PaymentMethodSelectorCardModel());
    paymentMethodSelectorCardModel4 =
        createModel(context, () => PaymentMethodSelectorCardModel());
    paymentMethodSelectorCardModel5 =
        createModel(context, () => PaymentMethodSelectorCardModel());
    paymentMethodSelectorCardModel6 =
        createModel(context, () => PaymentMethodSelectorCardModel());
    paymentMethodSelectorCardModel7 =
        createModel(context, () => PaymentMethodSelectorCardModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    paymentMethodSelectorCardModel1.dispose();
    paymentMethodSelectorCardModel2.dispose();
    paymentMethodSelectorCardModel3.dispose();
    paymentMethodSelectorCardModel4.dispose();
    paymentMethodSelectorCardModel5.dispose();
    paymentMethodSelectorCardModel6.dispose();
    paymentMethodSelectorCardModel7.dispose();
    customButtonModel.dispose();
  }
}
