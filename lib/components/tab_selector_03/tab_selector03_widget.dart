import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tab_selector03_model.dart';
export 'tab_selector03_model.dart';

class TabSelector03Widget extends StatefulWidget {
  const TabSelector03Widget({
    super.key,
    required this.title,
    required this.active,
    required this.action,
  });

  final String? title;
  final String? active;
  final Future Function(String title)? action;

  @override
  State<TabSelector03Widget> createState() => _TabSelector03WidgetState();
}

class _TabSelector03WidgetState extends State<TabSelector03Widget> {
  late TabSelector03Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabSelector03Model());
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
        height: double.infinity,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            widget!.title == widget!.active
                ? FlutterFlowTheme.of(context).primary
                : Colors.transparent,
            Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              widget!.title,
              'Upcoming',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    widget!.title == widget!.active
                        ? FlutterFlowTheme.of(context).info
                        : FlutterFlowTheme.of(context).text200,
                    FlutterFlowTheme.of(context).text200,
                  ),
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ),
      ),
    );
  }
}
