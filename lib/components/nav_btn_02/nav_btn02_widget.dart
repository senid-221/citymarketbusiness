import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_btn02_model.dart';
export 'nav_btn02_model.dart';

class NavBtn02Widget extends StatefulWidget {
  const NavBtn02Widget({
    super.key,
    required this.icon,
    required this.title,
  });

  final Widget? icon;
  final String? title;

  @override
  State<NavBtn02Widget> createState() => _NavBtn02WidgetState();
}

class _NavBtn02WidgetState extends State<NavBtn02Widget> {
  late NavBtn02Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBtn02Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
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
            child: widget!.icon!,
          ),
          Expanded(
            child: Text(
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
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ),
          Icon(
            FFIcons.kchevronRight,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 18.0,
          ),
        ]
            .divide(SizedBox(width: 12.0))
            .addToStart(SizedBox(width: 8.0))
            .addToEnd(SizedBox(width: 12.0)),
      ),
    );
  }
}
