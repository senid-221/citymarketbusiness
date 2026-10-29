import '/components/socialmedia_card/socialmedia_card_widget.dart';
import '/components/user_card/user_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'share_modal_model.dart';
export 'share_modal_model.dart';

class ShareModalWidget extends StatefulWidget {
  const ShareModalWidget({super.key});

  @override
  State<ShareModalWidget> createState() => _ShareModalWidgetState();
}

class _ShareModalWidgetState extends State<ShareModalWidget>
    with TickerProviderStateMixin {
  late ShareModalModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShareModalModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(
                0.0,
                valueOrDefault<double>(
                  random_data.randomInteger(400, 400).toDouble(),
                  400.0,
                )),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: ClipRRect(
        child: Container(
          decoration: BoxDecoration(),
          child: Stack(
            alignment: AlignmentDirectional(0.0, -1.0),
            children: [
              Transform.scale(
                scaleX: 1.02,
                scaleY: 1.0,
                child: Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).quaternary,
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional(0.0, 1.0),
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(12.0),
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  14.0, 10.0, 14.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        FFIcons.kalignLeft,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '9qnu73gy' /* Share */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.plusJakartaSans(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 6.0)),
                                  ),
                                  FlutterFlowIconButton(
                                    borderRadius: 8.0,
                                    buttonSize: 40.0,
                                    fillColor: Colors.transparent,
                                    icon: Icon(
                                      FFIcons.kx,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'nlei7mk7' /* Recent people */,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
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
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Divider(
                                                      height: 1.0,
                                                      thickness: 1.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 12.0)),
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.userCardModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: UserCardWidget(
                                              avatar:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/0s7om3o5dlji/Avatar-36.jpg',
                                              name: 'Charlotte Hanlin',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.userCardModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: UserCardWidget(
                                              avatar:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/v6ufnbvlglq9/Avatar-24.jpg',
                                              name: 'Kristin Watson',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.userCardModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: UserCardWidget(
                                              avatar:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/abyzonaq05f9/avatar-02.jpg',
                                              name: 'Clinton Mcclure',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.userCardModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: UserCardWidget(
                                              avatar:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/1qehq20xkxsi/Avatar-34.jpg',
                                              name: 'Maryland Winkles',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.userCardModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: UserCardWidget(
                                              avatar:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/qfp0grg8odjp/Avatar-07.jpg',
                                              name: 'Alexia Hershey',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.userCardModel6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: UserCardWidget(
                                              avatar:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/ebey02tsdiph/avatar-03.jpg',
                                              name: 'Charlotte Hanlin',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.userCardModel7,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: UserCardWidget(
                                              avatar:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/m5drvh7wljhd/Avatar-41.jpg',
                                              name: 'Charlotte Hanlin',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.userCardModel8,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: UserCardWidget(
                                              avatar:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/1an5outgycjn/Avatar-39.jpg',
                                              name: 'Charlotte Hanlin',
                                            ),
                                          ),
                                        ]
                                            .divide(SizedBox(width: 14.0))
                                            .addToStart(SizedBox(width: 16.0))
                                            .addToEnd(SizedBox(width: 16.0)),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      14.0, 0.0, 14.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '2e7wjg8z' /* Social media */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.plusJakartaSans(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Divider(
                                              height: 1.0,
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.socialmediaCardModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SocialmediaCardWidget(
                                          avatar:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/np3l33z2rlx0/Whatsapp.png',
                                          name: 'WhatsApp',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.socialmediaCardModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SocialmediaCardWidget(
                                          avatar:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/kpp2tbfi4l2s/Facebook.png',
                                          name: 'Facebook',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.socialmediaCardModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SocialmediaCardWidget(
                                          avatar:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/xsz0g5w2zkex/Instagram.png',
                                          name: 'Instagram',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.socialmediaCardModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SocialmediaCardWidget(
                                          avatar:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/3h13be9n2c0q/Telegram.png',
                                          name: 'Telegram',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.socialmediaCardModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SocialmediaCardWidget(
                                          avatar:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/lyko4gx6yx0w/Image.png',
                                          name: 'Twitter',
                                        ),
                                      ),
                                    ]
                                        .divide(SizedBox(width: 14.0))
                                        .addToStart(SizedBox(width: 14.0))
                                        .addToEnd(SizedBox(width: 4.0)),
                                  ),
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                          ]
                              .divide(SizedBox(height: 24.0))
                              .addToEnd(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: FFLocalizations.of(context).getText(
                              'qqt1sqci' /* Cancel */,
                            ),
                            options: FFButtonOptions(
                              height: 44.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).quaternary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: FFLocalizations.of(context).getText(
                              'xt1jw7e7' /* Share */,
                            ),
                            options: FFButtonOptions(
                              height: 44.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
