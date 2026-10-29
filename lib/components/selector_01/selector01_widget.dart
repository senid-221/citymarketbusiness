import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'selector01_model.dart';
export 'selector01_model.dart';

class Selector01Widget extends StatefulWidget {
  const Selector01Widget({
    super.key,
    required this.icon1,
    required this.icon2,
    required this.title,
    required this.active,
    required this.action,
  });

  final Widget? icon1;
  final Widget? icon2;
  final String? title;
  final String? active;
  final Future Function(String title)? action;

  @override
  State<Selector01Widget> createState() => _Selector01WidgetState();
}

class _Selector01WidgetState extends State<Selector01Widget> {
  late Selector01Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Selector01Model());
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
        height: 80.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            widget!.title == widget!.active
                ? FlutterFlowTheme.of(context).quaternary
                : Colors.transparent,
            Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(
              builder: (context) {
                if (widget!.title == widget!.active) {
                  return widget!.icon2!;
                } else {
                  return widget!.icon1!;
                }
              },
            ),
            Text(
              valueOrDefault<String>(
                widget!.title,
                'NA',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: valueOrDefault<Color>(
                      widget!.title == widget!.active
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
