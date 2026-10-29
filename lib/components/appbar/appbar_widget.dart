import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'appbar_model.dart';
export 'appbar_model.dart';

class AppbarWidget extends StatefulWidget {
  const AppbarWidget({
    super.key,
    required this.title,
    required this.action1,
    required this.icon1,
    required this.action2,
    required this.icon2,
  });

  final String? title;
  final Future Function()? action1;
  final Widget? icon1;
  final Future Function()? action2;
  final Widget? icon2;

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  late AppbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppbarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  12.0,
                  valueOrDefault<double>(
                    MediaQuery.of(context).padding.top + 12,
                    12.0,
                  ),
                  12.0,
                  12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 10.0,
                    buttonSize: 40.0,
                    fillColor: Colors.transparent,
                    icon: widget!.icon1!,
                    onPressed: () async {
                      await widget.action1?.call();
                    },
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget!.title,
                      'NA',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(),
                    child: FlutterFlowIconButton(
                      borderRadius: 10.0,
                      buttonSize: 40.0,
                      fillColor: Colors.transparent,
                      icon: widget!.icon2!,
                      onPressed: () async {
                        await widget.action2?.call();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
