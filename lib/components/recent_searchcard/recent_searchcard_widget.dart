import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'recent_searchcard_model.dart';
export 'recent_searchcard_model.dart';

class RecentSearchcardWidget extends StatefulWidget {
  const RecentSearchcardWidget({
    super.key,
    required this.title,
    required this.action,
  });

  final String? title;
  final Future Function(String title)? action;

  @override
  State<RecentSearchcardWidget> createState() => _RecentSearchcardWidgetState();
}

class _RecentSearchcardWidgetState extends State<RecentSearchcardWidget> {
  late RecentSearchcardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecentSearchcardModel());
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
        decoration: BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  FFIcons.khistory,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 18.0,
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
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ].divide(SizedBox(width: 6.0)),
            ),
            Icon(
              FFIcons.kx,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
