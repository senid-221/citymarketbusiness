import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_btn_model.dart';
export 'nav_btn_model.dart';

class NavBtnWidget extends StatefulWidget {
  const NavBtnWidget({
    super.key,
    required this.icon,
    required this.icon2,
    required this.title,
  });

  final Widget? icon;
  final Widget? icon2;
  final String? title;

  @override
  State<NavBtnWidget> createState() => _NavBtnWidgetState();
}

class _NavBtnWidgetState extends State<NavBtnWidget> {
  late NavBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBtnModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                FFAppState().pageSelector == widget!.title
                    ? FlutterFlowTheme.of(context).primary
                    : Colors.transparent,
                Colors.transparent,
              ),
              shape: BoxShape.circle,
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Builder(
                builder: (context) {
                  if (FFAppState().pageSelector == widget!.title) {
                    return widget!.icon!;
                  } else {
                    return widget!.icon2!;
                  }
                },
              ),
            ),
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
                    FFAppState().pageSelector == widget!.title
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).secondaryText,
                    FlutterFlowTheme.of(context).secondaryText,
                  ),
                  fontSize: 11.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ].divide(SizedBox(height: 4.0)),
      ),
    );
  }
}
