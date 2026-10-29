import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'color_selector_model.dart';
export 'color_selector_model.dart';

class ColorSelectorWidget extends StatefulWidget {
  const ColorSelectorWidget({
    super.key,
    required this.title,
    required this.active,
    required this.action,
    required this.color,
  });

  final String? title;
  final String? active;
  final Future Function(String title)? action;
  final Color? color;

  @override
  State<ColorSelectorWidget> createState() => _ColorSelectorWidgetState();
}

class _ColorSelectorWidgetState extends State<ColorSelectorWidget> {
  late ColorSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ColorSelectorModel());
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 44.0,
              height: 44.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: valueOrDefault<Color>(
                    widget!.title == widget!.active
                        ? widget!.color
                        : Colors.transparent,
                    Colors.transparent,
                  ),
                  width: 1.5,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: widget!.color,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ].divide(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
