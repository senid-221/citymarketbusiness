import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/nav_btn_03/nav_btn03_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'account_delete_model.dart';
export 'account_delete_model.dart';

class AccountDeleteWidget extends StatefulWidget {
  const AccountDeleteWidget({super.key});

  static String routeName = 'AccountDelete';
  static String routePath = '/accountDelete';

  @override
  State<AccountDeleteWidget> createState() => _AccountDeleteWidgetState();
}

class _AccountDeleteWidgetState extends State<AccountDeleteWidget> {
  late AccountDeleteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountDeleteModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
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
                      title: 'Delete account',
                      icon1: Icon(
                        FFIcons.karrowLeft,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      icon2: Icon(
                        FFIcons.kdotsVertical,
                        color: Colors.transparent,
                        size: 24.0,
                      ),
                      action1: () async {
                        context.safePop();
                      },
                      action2: () async {},
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'yx4qfoq7' /* Delete my account */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'f6tb6m0k' /* Why would you like to delete y... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(14.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  wrapWithModel(
                                    model: _model.navBtn03Model1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NavBtn03Widget(
                                      title:
                                          'I don\'t want to use ${valueOrDefault<String>(
                                        FFAppState().AppDetails.title,
                                        'NA',
                                      )} anymore',
                                      navigateAction: () async {
                                        context.pushNamed(
                                          AccountDeleteCnfWidget.routeName,
                                          queryParameters: {
                                            'reason': serializeParam(
                                              'I don\'t want to use ${FFAppState().AppDetails.title} anymore',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                    ),
                                  ),
                                  Divider(
                                    height: 1.0,
                                    thickness: 1.0,
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                  ),
                                  wrapWithModel(
                                    model: _model.navBtn03Model2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NavBtn03Widget(
                                      title: 'I\'m using a different account',
                                      navigateAction: () async {
                                        context.pushNamed(
                                          AccountDeleteCnfWidget.routeName,
                                          queryParameters: {
                                            'reason': serializeParam(
                                              'I\'m using a different account',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                    ),
                                  ),
                                  Divider(
                                    height: 1.0,
                                    thickness: 1.0,
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                  ),
                                  wrapWithModel(
                                    model: _model.navBtn03Model3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NavBtn03Widget(
                                      title: 'I\'m worried about privacy',
                                      navigateAction: () async {
                                        context.pushNamed(
                                          AccountDeleteCnfWidget.routeName,
                                          queryParameters: {
                                            'reason': serializeParam(
                                              'I\'m worried about privacy',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                    ),
                                  ),
                                  Divider(
                                    height: 1.0,
                                    thickness: 1.0,
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                  ),
                                  wrapWithModel(
                                    model: _model.navBtn03Model4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NavBtn03Widget(
                                      title: 'This app is not working properly',
                                      navigateAction: () async {
                                        context.pushNamed(
                                          AccountDeleteCnfWidget.routeName,
                                          queryParameters: {
                                            'reason': serializeParam(
                                              'This app is not working properly',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                    ),
                                  ),
                                  Divider(
                                    height: 1.0,
                                    thickness: 1.0,
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                  ),
                                  wrapWithModel(
                                    model: _model.navBtn03Model5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NavBtn03Widget(
                                      title: 'Other',
                                      navigateAction: () async {
                                        context.pushNamed(
                                          AccountDeleteCnfWidget.routeName,
                                          queryParameters: {
                                            'reason': serializeParam(
                                              'Other',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]
                          .divide(SizedBox(height: 16.0))
                          .addToStart(SizedBox(height: 16.0))
                          .addToEnd(SizedBox(height: 24.0)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
