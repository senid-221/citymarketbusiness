import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'selector02_model.dart';
export 'selector02_model.dart';

class Selector02Widget extends StatefulWidget {
  const Selector02Widget({
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
  State<Selector02Widget> createState() => _Selector02WidgetState();
}

class _Selector02WidgetState extends State<Selector02Widget> {
  late Selector02Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Selector02Model());
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
        height: 50.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            widget!.title == widget!.active
                ? Color(0x1F2669EC)
                : FlutterFlowTheme.of(context).quaternary,
            FlutterFlowTheme.of(context).quaternary,
          ),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: valueOrDefault<Color>(
              widget!.title == widget!.active
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).alternate,
              FlutterFlowTheme.of(context).alternate,
            ),
            width: 1.5,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                            ? FlutterFlowTheme.of(context).primary
                            : FlutterFlowTheme.of(context).text200,
                        FlutterFlowTheme.of(context).text200,
                      ),
                      fontSize: 15.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
              Builder(
                builder: (context) {
                  if (widget!.title == widget!.active) {
                    return widget!.icon2!;
                  } else {
                    return widget!.icon1!;
                  }
                },
              ),
            ].divide(SizedBox(width: 8.0)),
          ),
        ),
      ),
    );
  }
}
