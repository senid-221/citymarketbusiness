import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'customer_review_selector_model.dart';
export 'customer_review_selector_model.dart';

class CustomerReviewSelectorWidget extends StatefulWidget {
  const CustomerReviewSelectorWidget({
    super.key,
    required this.title,
    required this.active,
    required this.action,
    required this.index,
  });

  final String? title;
  final String? active;
  final Future Function(String title)? action;
  final int? index;

  @override
  State<CustomerReviewSelectorWidget> createState() =>
      _CustomerReviewSelectorWidgetState();
}

class _CustomerReviewSelectorWidgetState
    extends State<CustomerReviewSelectorWidget> with TickerProviderStateMixin {
  late CustomerReviewSelectorModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerReviewSelectorModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(1.0, 1.0),
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
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.action?.call(
          widget!.title!,
        );
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 44.0,
                  decoration: BoxDecoration(),
                  child: Text(
                    valueOrDefault<String>(
                      widget!.title,
                      'NA',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
                RatingBarIndicator(
                  itemBuilder: (context, index) => Icon(
                    Icons.star_rounded,
                    color: FlutterFlowTheme.of(context).warning,
                  ),
                  direction: Axis.horizontal,
                  rating: widget!.index!.toDouble(),
                  unratedColor: FlutterFlowTheme.of(context).secondaryText,
                  itemCount: 5,
                  itemSize: 20.0,
                ),
              ].divide(SizedBox(width: 10.0)),
            ),
            Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: valueOrDefault<Color>(
                    widget!.title == widget!.active
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).alternate,
                    FlutterFlowTheme.of(context).alternate,
                  ),
                  width: 2.0,
                ),
              ),
              child: Visibility(
                visible: widget!.title == widget!.active,
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      shape: BoxShape.circle,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
