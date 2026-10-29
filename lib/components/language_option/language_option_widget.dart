import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'language_option_model.dart';
export 'language_option_model.dart';

class LanguageOptionWidget extends StatefulWidget {
  const LanguageOptionWidget({
    super.key,
    required this.title,
    required this.flag,
    bool? selected,
    required this.selectAction,
  }) : this.selected = selected ?? false;

  final String? title;
  final String? flag;
  final bool selected;
  final Future Function()? selectAction;

  @override
  State<LanguageOptionWidget> createState() => _LanguageOptionWidgetState();
}

class _LanguageOptionWidgetState extends State<LanguageOptionWidget> {
  late LanguageOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanguageOptionModel());
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
        await widget.selectAction?.call();
      },
      child: Container(
        width: double.infinity,
        height: 66.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: valueOrDefault<Color>(
              widget!.selected
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).alternate,
              FlutterFlowTheme.of(context).alternate,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          valueOrDefault<String>(
                            widget!.flag,
                            'https://flagcdn.com/h80/sa.png',
                          ),
                          width: 44.0,
                          height: 32.0,
                          fit: BoxFit.cover,
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
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ),
              Builder(
                builder: (context) {
                  if (widget!.selected) {
                    return Icon(
                      Icons.radio_button_checked,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    );
                  } else {
                    return Icon(
                      Icons.radio_button_off,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    );
                  }
                },
              ),
            ].divide(SizedBox(width: 12.0)),
          ),
        ),
      ),
    );
  }
}
