import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'selector04_model.dart';
export 'selector04_model.dart';

class Selector04Widget extends StatefulWidget {
  const Selector04Widget({
    super.key,
    required this.title,
    required this.active,
    required this.action,
  });

  final String? title;
  final String? active;
  final Future Function(String title)? action;

  @override
  State<Selector04Widget> createState() => _Selector04WidgetState();
}

class _Selector04WidgetState extends State<Selector04Widget> {
  late Selector04Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Selector04Model());
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
        height: 36.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              valueOrDefault<Color>(
                widget!.title == widget!.active
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).secondaryBackground,
                FlutterFlowTheme.of(context).secondaryBackground,
              ),
              valueOrDefault<Color>(
                widget!.title == widget!.active
                    ? FlutterFlowTheme.of(context).gradient
                    : FlutterFlowTheme.of(context).secondaryBackground,
                FlutterFlowTheme.of(context).secondaryBackground,
              )
            ],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(-1.0, 0.0),
            end: AlignmentDirectional(1.0, 0),
          ),
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.transparent,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                valueOrDefault<String>(
                  widget!.title,
                  'All',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: valueOrDefault<Color>(
                        widget!.title == widget!.active
                            ? Colors.white
                            : FlutterFlowTheme.of(context).primaryText,
                        FlutterFlowTheme.of(context).primaryText,
                      ),
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
