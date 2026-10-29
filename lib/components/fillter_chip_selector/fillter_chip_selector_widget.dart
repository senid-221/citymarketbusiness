import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fillter_chip_selector_model.dart';
export 'fillter_chip_selector_model.dart';

class FillterChipSelectorWidget extends StatefulWidget {
  const FillterChipSelectorWidget({
    super.key,
    required this.title,
    required this.active,
    required this.action,
  });

  final String? title;
  final String? active;
  final Future Function(String title)? action;

  @override
  State<FillterChipSelectorWidget> createState() =>
      _FillterChipSelectorWidgetState();
}

class _FillterChipSelectorWidgetState extends State<FillterChipSelectorWidget> {
  late FillterChipSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FillterChipSelectorModel());
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
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
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
                            ? Colors.white
                            : FlutterFlowTheme.of(context).primaryText,
                        FlutterFlowTheme.of(context).primaryText,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
            ].divide(SizedBox(width: 6.0)),
          ),
        ),
      ),
    );
  }
}
