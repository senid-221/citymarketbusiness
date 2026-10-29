import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/notification_card/notification_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notification_model.dart';
export 'notification_model.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  static String routeName = 'Notification';
  static String routePath = '/notification';

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  late NotificationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Stack(
              children: [
                wrapWithModel(
                  model: _model.bgCardModel,
                  updateCallback: () => safeSetState(() {}),
                  child: BgCardWidget(),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.appbarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: AppbarWidget(
                        title: 'Notifications',
                        icon1: Icon(
                          FFIcons.karrowLeft,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        icon2: Icon(
                          FFIcons.ksettings01,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        action1: () async {
                          context.safePop();
                        },
                        action2: () async {
                          context
                              .pushNamed(NotificationSettingWidget.routeName);
                        },
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  14.0, 0.0, 14.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 2.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'yc53y7wk' /* Today */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'fwoydqbh' /* Mark all read */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.notificationCardModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: NotificationCardWidget(
                                          icon: Icon(
                                            FFIcons.kfileText,
                                            color: FlutterFlowTheme.of(context)
                                                .blue,
                                            size: 24.0,
                                          ),
                                          title: '🛒 Cart Reminder',
                                          subTitle:
                                              'You still have items waiting in your cart',
                                          seen: true,
                                          timestamp: '5m ago',
                                          color: Color(0x333381FF),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.notificationCardModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: NotificationCardWidget(
                                          icon: Icon(
                                            FFIcons.kfilePencil,
                                            color: FlutterFlowTheme.of(context)
                                                .success,
                                            size: 24.0,
                                          ),
                                          title: '🥦 Fresh Arrivals',
                                          subTitle:
                                              'New seasonal fruits and vegetables are now available, check them out before they’re gone',
                                          seen: true,
                                          timestamp: '9m ago',
                                          color: Color(0x335FFF33),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.notificationCardModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: NotificationCardWidget(
                                          icon: Icon(
                                            FFIcons.kpdf02,
                                            color: FlutterFlowTheme.of(context)
                                                .warning,
                                            size: 24.0,
                                          ),
                                          title: '💳 Payment Success',
                                          subTitle:
                                              'Your transaction was completed successfully',
                                          seen: false,
                                          timestamp: '15m ago',
                                          color: Color(0x33FFD433),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.notificationCardModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: NotificationCardWidget(
                                          icon: Icon(
                                            FFIcons.ktarget02,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 24.0,
                                          ),
                                          title: '🔥 Hot Deal Special For You',
                                          subTitle:
                                              'Don’t miss today’s special offers with discounts on popular grocery items available for a limited time',
                                          seen: false,
                                          timestamp: '25m ago',
                                          color: Color(0x339F35B6),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 14.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 2.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'd4wgm4cw' /* Yeterday */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.notificationCardModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: NotificationCardWidget(
                                          icon: Icon(
                                            Icons.auto_awesome_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .blue,
                                            size: 24.0,
                                          ),
                                          title: '⏰ Restock Alert',
                                          subTitle:
                                              'Great news! Your favorite products are back in stock, grab them before they sell out again',
                                          seen: false,
                                          timestamp: '32m ago',
                                          color: Color(0x333381FF),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.notificationCardModel6,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: NotificationCardWidget(
                                          icon: Icon(
                                            FFIcons.klock,
                                            color: FlutterFlowTheme.of(context)
                                                .warning,
                                            size: 24.0,
                                          ),
                                          title: '🎉 Exclusive Offer',
                                          subTitle:
                                              'Enjoy extra savings and rewards when you shop today, available only for selected members',
                                          seen: false,
                                          timestamp: '44m ago',
                                          color: Color(0x33FFD433),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 12.0)),
                                  ),
                                ].divide(SizedBox(height: 24.0)),
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 16.0))
                              .addToStart(SizedBox(height: 14.0))
                              .addToEnd(SizedBox(height: 14.0)),
                        ),
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
