import '/components/sortby_optio_selector/sortby_optio_selector_widget.dart';
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
import 'sort_by_modal_model.dart';
export 'sort_by_modal_model.dart';

class SortByModalWidget extends StatefulWidget {
  const SortByModalWidget({super.key});

  @override
  State<SortByModalWidget> createState() => _SortByModalWidgetState();
}

class _SortByModalWidgetState extends State<SortByModalWidget>
    with TickerProviderStateMixin {
  late SortByModalModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SortByModalModel());

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
      child: Stack(
        alignment: AlignmentDirectional(0.0, -1.0),
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(12.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                14.0, 6.0, 6.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        's6tf0azr' /* Sort by */,
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
                                            fontSize: 22.0,
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1.0,
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 32.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                wrapWithModel(
                                  model: _model.sortbyOptioSelectorModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SortbyOptioSelectorWidget(
                                    title: 'Popularity',
                                    active: _model.selector,
                                    action: (title) async {
                                      _model.selector = title;
                                      safeSetState(() {});
                                      await Future.delayed(
                                        Duration(
                                          milliseconds: 500,
                                        ),
                                      );
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.sortbyOptioSelectorModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SortbyOptioSelectorWidget(
                                    title: 'Rating',
                                    active: _model.selector,
                                    action: (title) async {
                                      _model.selector = title;
                                      safeSetState(() {});
                                      await Future.delayed(
                                        Duration(
                                          milliseconds: 500,
                                        ),
                                      );
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.sortbyOptioSelectorModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SortbyOptioSelectorWidget(
                                    title: 'Price: Low to High',
                                    active: _model.selector,
                                    action: (title) async {
                                      _model.selector = title;
                                      safeSetState(() {});
                                      await Future.delayed(
                                        Duration(
                                          milliseconds: 500,
                                        ),
                                      );
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.sortbyOptioSelectorModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SortbyOptioSelectorWidget(
                                    title: 'Price: High to Low',
                                    active: _model.selector,
                                    action: (title) async {
                                      _model.selector = title;
                                      safeSetState(() {});
                                      await Future.delayed(
                                        Duration(
                                          milliseconds: 500,
                                        ),
                                      );
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.sortbyOptioSelectorModel5,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SortbyOptioSelectorWidget(
                                    title: 'Newest First',
                                    active: _model.selector,
                                    action: (title) async {
                                      _model.selector = title;
                                      safeSetState(() {});
                                      await Future.delayed(
                                        Duration(
                                          milliseconds: 500,
                                        ),
                                      );
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ].divide(SizedBox(height: 6.0)),
                            ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
          ),
          Container(
            width: 44.0,
            height: 5.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ],
      ),
    );
  }
}
