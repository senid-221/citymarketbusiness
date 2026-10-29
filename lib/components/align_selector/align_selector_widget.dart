import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'align_selector_model.dart';
export 'align_selector_model.dart';

class AlignSelectorWidget extends StatefulWidget {
  const AlignSelectorWidget({
    super.key,
    required this.title,
    required this.active,
    required this.action,
    required this.icon1,
    required this.icon2,
  });

  final String? title;
  final String? active;
  final Future Function(String title)? action;
  final Widget? icon1;
  final Widget? icon2;

  @override
  State<AlignSelectorWidget> createState() => _AlignSelectorWidgetState();
}

class _AlignSelectorWidgetState extends State<AlignSelectorWidget> {
  late AlignSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlignSelectorModel());
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
                ? Color(0x262669EC)
                : Colors.transparent,
            Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Builder(
          builder: (context) {
            if (widget!.title == widget!.active) {
              return widget!.icon2!;
            } else {
              return widget!.icon1!;
            }
          },
        ),
      ),
    );
  }
}
