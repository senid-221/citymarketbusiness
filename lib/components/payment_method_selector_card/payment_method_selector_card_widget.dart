import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'payment_method_selector_card_model.dart';
export 'payment_method_selector_card_model.dart';

class PaymentMethodSelectorCardWidget extends StatefulWidget {
  const PaymentMethodSelectorCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.active,
    required this.action,
    required this.imagesize,
  });

  final String? image;
  final String? title;
  final String? active;
  final Future Function(String title)? action;
  final double? imagesize;

  @override
  State<PaymentMethodSelectorCardWidget> createState() =>
      _PaymentMethodSelectorCardWidgetState();
}

class _PaymentMethodSelectorCardWidgetState
    extends State<PaymentMethodSelectorCardWidget>
    with TickerProviderStateMixin {
  late PaymentMethodSelectorCardModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentMethodSelectorCardModel());

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
          color: valueOrDefault<Color>(
            widget!.title == widget!.active
                ? Color(0x32297357)
                : FlutterFlowTheme.of(context).secondaryBackground,
            FlutterFlowTheme.of(context).secondaryBackground,
          ),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: valueOrDefault<Color>(
              widget!.title == widget!.active
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).secondaryBackground,
              FlutterFlowTheme.of(context).secondaryBackground,
            ),
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: SvgPicture.network(
                        valueOrDefault<String>(
                          widget!.image,
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/vyb3uavreh68/Bank_of_America_svg.svg',
                        ),
                        width: widget!.imagesize,
                        height: widget!.imagesize,
                        fit: BoxFit.contain,
                        alignment: Alignment(0.0, 0.0),
                      ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget!.title,
                        'Bank of Ameria',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
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
            ].divide(SizedBox(width: 12.0)).addToEnd(SizedBox(width: 6.0)),
          ),
        ),
      ),
    );
  }
}
