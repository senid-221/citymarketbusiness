import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/nav_btn_02/nav_btn02_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contacts_model.dart';
export 'contacts_model.dart';

class ContactsWidget extends StatefulWidget {
  const ContactsWidget({super.key});

  static String routeName = 'Contacts';
  static String routePath = '/contacts';

  @override
  State<ContactsWidget> createState() => _ContactsWidgetState();
}

class _ContactsWidgetState extends State<ContactsWidget> {
  late ContactsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactsModel());
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
                    title: 'Contacts',
                    icon1: Icon(
                      FFIcons.karrowLeft,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    icon2: Icon(
                      FFIcons.khelp,
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
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            14.0, 20.0, 14.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(SupportHomeWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.navBtn02Model1,
                                updateCallback: () => safeSetState(() {}),
                                child: NavBtn02Widget(
                                  icon: Icon(
                                    FFIcons.kheadset,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  title: 'Customer Service',
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.navBtn02Model2,
                              updateCallback: () => safeSetState(() {}),
                              child: NavBtn02Widget(
                                icon: Icon(
                                  FFIcons.kbrandWhatsapp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20.0,
                                ),
                                title: 'WhatsApp',
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await launchURL('https://appgenz.com/');
                              },
                              child: wrapWithModel(
                                model: _model.navBtn02Model3,
                                updateCallback: () => safeSetState(() {}),
                                child: NavBtn02Widget(
                                  icon: Icon(
                                    FFIcons.kworld,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  title: 'Website',
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.navBtn02Model4,
                              updateCallback: () => safeSetState(() {}),
                              child: NavBtn02Widget(
                                icon: Icon(
                                  FFIcons.kfacebook,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20.0,
                                ),
                                title: 'Facebook',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.navBtn02Model5,
                              updateCallback: () => safeSetState(() {}),
                              child: NavBtn02Widget(
                                icon: Icon(
                                  FFIcons.ktwitter,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20.0,
                                ),
                                title: 'Twitter',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.navBtn02Model6,
                              updateCallback: () => safeSetState(() {}),
                              child: NavBtn02Widget(
                                icon: Icon(
                                  FFIcons.kinstagram,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20.0,
                                ),
                                title: 'Instagram',
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 12.0))
                              .addToEnd(SizedBox(height: 16.0)),
                        ),
                      ),
                    ].addToEnd(SizedBox(height: 24.0)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
