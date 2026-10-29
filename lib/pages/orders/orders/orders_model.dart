import '/components/bg_card/bg_card_widget.dart';
import '/components/canceled_order_card/canceled_order_card_widget.dart';
import '/components/complited_order_card/complited_order_card_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/components/order_selector/order_selector_widget.dart';
import '/components/upcoming_order_card/upcoming_order_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'orders_widget.dart' show OrdersWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrdersModel extends FlutterFlowModel<OrdersWidget> {
  ///  Local state fields for this page.

  int tabSelector = 0;

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for OrderSelector component.
  late OrderSelectorModel orderSelectorModel1;
  // Model for OrderSelector component.
  late OrderSelectorModel orderSelectorModel2;
  // Model for OrderSelector component.
  late OrderSelectorModel orderSelectorModel3;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for UpcomingOrderCard component.
  late UpcomingOrderCardModel upcomingOrderCardModel1;
  // Model for UpcomingOrderCard component.
  late UpcomingOrderCardModel upcomingOrderCardModel2;
  // Model for ComplitedOrderCard component.
  late ComplitedOrderCardModel complitedOrderCardModel1;
  // Model for ComplitedOrderCard component.
  late ComplitedOrderCardModel complitedOrderCardModel2;
  // Model for ComplitedOrderCard component.
  late ComplitedOrderCardModel complitedOrderCardModel3;
  // Model for ComplitedOrderCard component.
  late ComplitedOrderCardModel complitedOrderCardModel4;
  // Model for CanceledOrderCard component.
  late CanceledOrderCardModel canceledOrderCardModel1;
  // Model for CanceledOrderCard component.
  late CanceledOrderCardModel canceledOrderCardModel2;
  // Model for CanceledOrderCard component.
  late CanceledOrderCardModel canceledOrderCardModel3;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    orderSelectorModel1 = createModel(context, () => OrderSelectorModel());
    orderSelectorModel2 = createModel(context, () => OrderSelectorModel());
    orderSelectorModel3 = createModel(context, () => OrderSelectorModel());
    upcomingOrderCardModel1 =
        createModel(context, () => UpcomingOrderCardModel());
    upcomingOrderCardModel2 =
        createModel(context, () => UpcomingOrderCardModel());
    complitedOrderCardModel1 =
        createModel(context, () => ComplitedOrderCardModel());
    complitedOrderCardModel2 =
        createModel(context, () => ComplitedOrderCardModel());
    complitedOrderCardModel3 =
        createModel(context, () => ComplitedOrderCardModel());
    complitedOrderCardModel4 =
        createModel(context, () => ComplitedOrderCardModel());
    canceledOrderCardModel1 =
        createModel(context, () => CanceledOrderCardModel());
    canceledOrderCardModel2 =
        createModel(context, () => CanceledOrderCardModel());
    canceledOrderCardModel3 =
        createModel(context, () => CanceledOrderCardModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    orderSelectorModel1.dispose();
    orderSelectorModel2.dispose();
    orderSelectorModel3.dispose();
    upcomingOrderCardModel1.dispose();
    upcomingOrderCardModel2.dispose();
    complitedOrderCardModel1.dispose();
    complitedOrderCardModel2.dispose();
    complitedOrderCardModel3.dispose();
    complitedOrderCardModel4.dispose();
    canceledOrderCardModel1.dispose();
    canceledOrderCardModel2.dispose();
    canceledOrderCardModel3.dispose();
    navBarModel.dispose();
  }
}
