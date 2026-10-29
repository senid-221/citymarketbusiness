import '/backend/schema/structs/index.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/cart_item_card/cart_item_card_widget.dart';
import '/components/custom_button/custom_button_widget.dart';
import '/components/delivery_selector/delivery_selector_widget.dart';
import '/components/selector_06/selector06_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_static_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/lat_lng.dart';
import 'dart:ui';
import '/index.dart';
import 'checkout_widget.dart' show CheckoutWidget;
import 'package:mapbox_search/mapbox_search.dart' as mapbox;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckoutModel extends FlutterFlowModel<CheckoutWidget> {
  ///  Local state fields for this page.

  String deliveryTime = 'Express';

  String tipSelector = 'Not now';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for DeliverySelector component.
  late DeliverySelectorModel deliverySelectorModel1;
  // Model for DeliverySelector component.
  late DeliverySelectorModel deliverySelectorModel2;
  // Model for DeliverySelector component.
  late DeliverySelectorModel deliverySelectorModel3;
  // Models for CartItemCard dynamic component.
  late FlutterFlowDynamicModels<CartItemCardModel> cartItemCardModels;
  // Model for selector_06 component.
  late Selector06Model selector06Model1;
  // Model for selector_06 component.
  late Selector06Model selector06Model2;
  // Model for selector_06 component.
  late Selector06Model selector06Model3;
  // Model for selector_06 component.
  late Selector06Model selector06Model4;
  // Model for selector_06 component.
  late Selector06Model selector06Model5;
  // Model for selector_06 component.
  late Selector06Model selector06Model6;
  // Model for selector_06 component.
  late Selector06Model selector06Model7;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for CustomButton component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    deliverySelectorModel1 =
        createModel(context, () => DeliverySelectorModel());
    deliverySelectorModel2 =
        createModel(context, () => DeliverySelectorModel());
    deliverySelectorModel3 =
        createModel(context, () => DeliverySelectorModel());
    cartItemCardModels = FlutterFlowDynamicModels(() => CartItemCardModel());
    selector06Model1 = createModel(context, () => Selector06Model());
    selector06Model2 = createModel(context, () => Selector06Model());
    selector06Model3 = createModel(context, () => Selector06Model());
    selector06Model4 = createModel(context, () => Selector06Model());
    selector06Model5 = createModel(context, () => Selector06Model());
    selector06Model6 = createModel(context, () => Selector06Model());
    selector06Model7 = createModel(context, () => Selector06Model());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    deliverySelectorModel1.dispose();
    deliverySelectorModel2.dispose();
    deliverySelectorModel3.dispose();
    cartItemCardModels.dispose();
    selector06Model1.dispose();
    selector06Model2.dispose();
    selector06Model3.dispose();
    selector06Model4.dispose();
    selector06Model5.dispose();
    selector06Model6.dispose();
    selector06Model7.dispose();
    customButtonModel.dispose();
  }
}
