import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'save_button02_model.dart';
export 'save_button02_model.dart';

class SaveButton02Widget extends StatefulWidget {
  const SaveButton02Widget({super.key});

  @override
  State<SaveButton02Widget> createState() => _SaveButton02WidgetState();
}

class _SaveButton02WidgetState extends State<SaveButton02Widget> {
  late SaveButton02Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaveButton02Model());
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
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 22.0,
              );
            } else {
              return Icon(
                Icons.favorite_sharp,
                color: FlutterFlowTheme.of(context).error,
                size: 22.0,
              );
            }
          },
        ),
      ),
    );
  }
}
