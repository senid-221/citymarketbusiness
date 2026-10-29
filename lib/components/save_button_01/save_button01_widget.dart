import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'save_button01_model.dart';
export 'save_button01_model.dart';

class SaveButton01Widget extends StatefulWidget {
  const SaveButton01Widget({super.key});

  @override
  State<SaveButton01Widget> createState() => _SaveButton01WidgetState();
}

class _SaveButton01WidgetState extends State<SaveButton01Widget>
    with TickerProviderStateMixin {
  late SaveButton01Model _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaveButton01Model());

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.2, 0.2),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });
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
        _model.save = !_model.save;
        safeSetState(() {});
      },
      child: Container(
        decoration: BoxDecoration(),
        child: Builder(
          builder: (context) {
            if (_model.save) {
              return Icon(
                Icons.favorite_sharp,
                color: FlutterFlowTheme.of(context).error,
                size: 22.0,
              ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!);
            } else {
              return Icon(
                Icons.favorite_sharp,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 22.0,
              );
            }
          },
        ),
      ),
    );
  }
}
