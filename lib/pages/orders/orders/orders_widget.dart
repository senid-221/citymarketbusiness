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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'orders_model.dart';
export 'orders_model.dart';

class OrdersWidget extends StatefulWidget {
  const OrdersWidget({super.key});

  static String routeName = 'Orders';
  static String routePath = '/orders';

  @override
  State<OrdersWidget> createState() => _OrdersWidgetState();
}

class _OrdersWidgetState extends State<OrdersWidget>
    with TickerProviderStateMixin {
  late OrdersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrdersModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().pageSelector = 'Orders';
      safeSetState(() {});
    });

    animationsMap.addAll({
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(0.9, 0.9),
            end: Offset(1.0, 1.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(0.9, 0.9),
            end: Offset(1.0, 1.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(0.9, 0.9),
            end: Offset(1.0, 1.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).senary,
        body: Stack(
          children: [
            wrapWithModel(
              model: _model.bgCardModel,
              updateCallback: () => safeSetState(() {}),
              child: BgCardWidget(),
            ),
            Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).header,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0,
                                        valueOrDefault<double>(
                                          MediaQuery.of(context).padding.top +
                                              12,
                                          12.0,
                                        ),
                                        16.0,
                                        12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: SvgPicture.network(
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/saygaq3eq0yx/shoping-logo-initial-h-premium-vector_316501-236-removebg-preview_1.svg',
                                                  width: 26.0,
                                                  height: 26.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'f72zf3et' /* Orders */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font:
                                                    GoogleFonts.plusJakartaSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderRadius: 10.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          icon: Icon(
                                            FFIcons.ksearch,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 22.0,
                                          ),
                                          onPressed: () async {
                                            context.pushNamed(
                                                SearchOrdersWidget.routeName);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.orderSelectorModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OrderSelectorWidget(
                                        title: 'Upcoming',
                                        active: _model.tabSelector,
                                        index: 0,
                                        action: (index) async {
                                          await _model.pageViewController
                                              ?.animateToPage(
                                            index,
                                            duration:
                                                Duration(milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.orderSelectorModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OrderSelectorWidget(
                                        title: 'Completed',
                                        active: _model.tabSelector,
                                        index: 1,
                                        action: (index) async {
                                          await _model.pageViewController
                                              ?.animateToPage(
                                            index,
                                            duration:
                                                Duration(milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.orderSelectorModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OrderSelectorWidget(
                                        title: 'Canceled',
                                        active: _model.tabSelector,
                                        index: 2,
                                        action: (index) async {
                                          await _model.pageViewController
                                              ?.animateToPage(
                                            index,
                                            duration:
                                                Duration(milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: PageView(
                                    controller: _model.pageViewController ??=
                                        PageController(initialPage: 0),
                                    onPageChanged: (_) async {
                                      _model.tabSelector =
                                          _model.pageViewCurrentIndex;
                                      safeSetState(() {});
                                    },
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model: _model
                                                  .upcomingOrderCardModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: UpcomingOrderCardWidget(
                                                image:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/tlqq0xnqhnpz/GroceryItems_(24).png',
                                                title: 'Ground Beef',
                                                price: '\$45.99',
                                                quantity: '5',
                                                delivery: 'Today, 3-4 PM',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .upcomingOrderCardModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: UpcomingOrderCardWidget(
                                                image:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/rq2x7qkqb3kr/GroceryItems_(10).png',
                                                title: 'Sweet Corn',
                                                price: '\$23.00',
                                                quantity: '3',
                                                delivery: 'Today, 3-4 PM',
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(height: 14.0))
                                              .addToStart(
                                                  SizedBox(height: 16.0))
                                              .addToEnd(
                                                  SizedBox(height: 100.0)),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'columnOnPageLoadAnimation1']!),
                                      SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model: _model
                                                  .complitedOrderCardModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: ComplitedOrderCardWidget(
                                                image:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/dniam63ck5zm/GroceryItems_(17).png',
                                                title: 'Garlic Baguette',
                                                price: '\$34.90',
                                                quantity: '4',
                                                delivery: 'Oct 10',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .complitedOrderCardModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: ComplitedOrderCardWidget(
                                                image:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/8pmuzq8ygbmt/GroceryItems_(12).png',
                                                title: 'Leeks',
                                                price: '\$22.45',
                                                quantity: '2',
                                                delivery: 'Oct 7',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .complitedOrderCardModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: ComplitedOrderCardWidget(
                                                image:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/mcj8yr0hotni/GroceryItems_(14).png',
                                                title: 'Pumpkin Slice',
                                                price: '\$48.36',
                                                quantity: '5',
                                                delivery: 'Oct 5',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .complitedOrderCardModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: ComplitedOrderCardWidget(
                                                image:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/nioltrv15uj0/GroceryItems_(20).png',
                                                title: 'Wheat Bread',
                                                price: '\$18.99',
                                                quantity: '3',
                                                delivery: 'Oct 2',
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(height: 14.0))
                                              .addToStart(
                                                  SizedBox(height: 16.0))
                                              .addToEnd(
                                                  SizedBox(height: 100.0)),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'columnOnPageLoadAnimation2']!),
                                      SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model: _model
                                                  .canceledOrderCardModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: CanceledOrderCardWidget(
                                                image:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/pelbcj4yz9jr/GroceryItems_(18).png',
                                                title: 'Cinnamon Roll',
                                                price: '\$35.99',
                                                quantity: '3',
                                                delivery: 'Jan 8',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .canceledOrderCardModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: CanceledOrderCardWidget(
                                                image:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/n61hof4miiy9/GroceryItems_(2).png',
                                                title: 'Red Bell Pepper',
                                                price: '\$35.99',
                                                quantity: '5',
                                                delivery: 'Jan 8',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .canceledOrderCardModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: CanceledOrderCardWidget(
                                                image:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/7vln1uuj3gp5/GroceryItems_(35).png',
                                                title: 'Chocolate Milk',
                                                price: '\$35.99',
                                                quantity: '2',
                                                delivery: 'Jan 8',
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(height: 14.0))
                                              .addToStart(
                                                  SizedBox(height: 16.0))
                                              .addToEnd(
                                                  SizedBox(height: 100.0)),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'columnOnPageLoadAnimation3']!),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: wrapWithModel(
                                    model: _model.navBarModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NavBarWidget(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
