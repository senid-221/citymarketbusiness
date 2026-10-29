import '/backend/schema/structs/index.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/cart_item_card/cart_item_card_widget.dart';
import '/components/delete_all_cart_items/delete_all_cart_items_widget.dart';
import '/components/promocode_modal/promocode_modal_widget.dart';
import '/components/vegitables_card/vegitables_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'cart_widget.dart' show CartWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartModel extends FlutterFlowModel<CartWidget> {
  ///  Local state fields for this page.

  String choiceChips = 'All';

  String active = 'Hair';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Models for CartItemCard dynamic component.
  late FlutterFlowDynamicModels<CartItemCardModel> cartItemCardModels;
  // Models for VegitablesCard dynamic component.
  late FlutterFlowDynamicModels<VegitablesCardModel> vegitablesCardModels;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    cartItemCardModels = FlutterFlowDynamicModels(() => CartItemCardModel());
    vegitablesCardModels =
        FlutterFlowDynamicModels(() => VegitablesCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    cartItemCardModels.dispose();
    vegitablesCardModels.dispose();
  }
}
