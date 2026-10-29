import '/components/bg_card/bg_card_widget.dart';
import '/components/transactions_card/transactions_card_widget.dart';
import '/components/wallet_option_c_ard/wallet_option_c_ard_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'wallet_widget.dart' show WalletWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WalletModel extends FlutterFlowModel<WalletWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for WalletOptionCArd component.
  late WalletOptionCArdModel walletOptionCArdModel1;
  // Model for WalletOptionCArd component.
  late WalletOptionCArdModel walletOptionCArdModel2;
  // Model for WalletOptionCArd component.
  late WalletOptionCArdModel walletOptionCArdModel3;
  // Model for WalletOptionCArd component.
  late WalletOptionCArdModel walletOptionCArdModel4;
  // Model for TransactionsCard component.
  late TransactionsCardModel transactionsCardModel1;
  // Model for TransactionsCard component.
  late TransactionsCardModel transactionsCardModel2;
  // Model for TransactionsCard component.
  late TransactionsCardModel transactionsCardModel3;
  // Model for TransactionsCard component.
  late TransactionsCardModel transactionsCardModel4;
  // Model for TransactionsCard component.
  late TransactionsCardModel transactionsCardModel5;
  // Model for TransactionsCard component.
  late TransactionsCardModel transactionsCardModel6;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    walletOptionCArdModel1 =
        createModel(context, () => WalletOptionCArdModel());
    walletOptionCArdModel2 =
        createModel(context, () => WalletOptionCArdModel());
    walletOptionCArdModel3 =
        createModel(context, () => WalletOptionCArdModel());
    walletOptionCArdModel4 =
        createModel(context, () => WalletOptionCArdModel());
    transactionsCardModel1 =
        createModel(context, () => TransactionsCardModel());
    transactionsCardModel2 =
        createModel(context, () => TransactionsCardModel());
    transactionsCardModel3 =
        createModel(context, () => TransactionsCardModel());
    transactionsCardModel4 =
        createModel(context, () => TransactionsCardModel());
    transactionsCardModel5 =
        createModel(context, () => TransactionsCardModel());
    transactionsCardModel6 =
        createModel(context, () => TransactionsCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    walletOptionCArdModel1.dispose();
    walletOptionCArdModel2.dispose();
    walletOptionCArdModel3.dispose();
    walletOptionCArdModel4.dispose();
    transactionsCardModel1.dispose();
    transactionsCardModel2.dispose();
    transactionsCardModel3.dispose();
    transactionsCardModel4.dispose();
    transactionsCardModel5.dispose();
    transactionsCardModel6.dispose();
  }
}
