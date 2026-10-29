import '/components/bg_card/bg_card_widget.dart';
import '/components/searchorder_card/searchorder_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_orders_model.dart';
export 'search_orders_model.dart';

class SearchOrdersWidget extends StatefulWidget {
  const SearchOrdersWidget({super.key});

  static String routeName = 'SearchOrders';
  static String routePath = '/searchOrders';

  @override
  State<SearchOrdersWidget> createState() => _SearchOrdersWidgetState();
}

class _SearchOrdersWidgetState extends State<SearchOrdersWidget>
    with TickerProviderStateMixin {
  late SearchOrdersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchOrdersModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().pageSelector = 'Orders';
      safeSetState(() {});
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
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
                                        16.0, 30.0, 16.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderRadius: 10.0,
                                          buttonSize: 42.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          icon: Icon(
                                            FFIcons.karrowLeft,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 22.0,
                                          ),
                                          onPressed: () async {
                                            context.safePop();
                                          },
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: 200.0,
                                            child: TextFormField(
                                              controller: _model.textController,
                                              focusNode:
                                                  _model.textFieldFocusNode,
                                              autofocus: false,
                                              enabled: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  't05fr8my' /* Search for products... */,
                                                ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                prefixIcon: Icon(
                                                  FFIcons.ksearch,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              enableInteractiveSelection: true,
                                              validator: _model
                                                  .textControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.searchorderCardModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: SearchorderCardWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/js31tsa4pk9q/Rectangle_126-7-removebg-preview.png',
                                title: 'Organic lemon',
                                price: '\$18.99',
                                quantity: '3',
                                status: 1,
                                delivery: 'Today, 3-4 PM',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.searchorderCardModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: SearchorderCardWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/w71mzb0h705m/Rectangle_126-removebg-preview.png',
                                title: 'Mango',
                                price: '\$34.90',
                                quantity: '2',
                                status: 2,
                                delivery: 'Oct 10',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.searchorderCardModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: SearchorderCardWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/cqgdfhhekr8p/Rectangle_126-6-removebg-preview.png',
                                title: 'Fresh raw beef',
                                price: '\$22.45',
                                quantity: '4',
                                status: 0,
                                delivery: 'Oct 6',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.searchorderCardModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: SearchorderCardWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/zb2mski5wvd5/Rectangle_126-4-removebg-preview.png',
                                title: 'Fresh banana',
                                price: '\$16.22',
                                quantity: '5',
                                status: 1,
                                delivery: 'Jan 8',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.searchorderCardModel5,
                              updateCallback: () => safeSetState(() {}),
                              child: SearchorderCardWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/2nk70r9coqev/Rectangle_152-removebg-preview.png',
                                title: 'Organic lemone',
                                price: '\$12.00',
                                quantity: '2',
                                status: 0,
                                delivery: 'Feb 8',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.searchorderCardModel6,
                              updateCallback: () => safeSetState(() {}),
                              child: SearchorderCardWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/0wkoay90c13s/Rectangle_152-1-removebg-preview.png',
                                title: 'Pineapple',
                                price: '\$19.00',
                                quantity: '4',
                                status: 2,
                                delivery: 'Mar 12',
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 14.0))
                              .addToStart(SizedBox(height: 14.0))
                              .addToEnd(SizedBox(height: 24.0)),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['columnOnPageLoadAnimation']!),
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
