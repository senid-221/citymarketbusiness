import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bg_card_model.dart';
export 'bg_card_model.dart';

class BgCardWidget extends StatefulWidget {
  const BgCardWidget({super.key});

  @override
  State<BgCardWidget> createState() => _BgCardWidgetState();
}

class _BgCardWidgetState extends State<BgCardWidget> {
  late BgCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BgCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.0,
      child: Container(
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/xnuneyo0xhmy/phone-wallpaper-new-simple-art-best-gallery-wallpaper_505522-203.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1.0, -1.0),
              child: Container(
                width: 0.0,
                height: 0.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 300.0,
                      color: FlutterFlowTheme.of(context).blue,
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                      spreadRadius: 60.0,
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 1.0),
              child: Container(
                width: 0.0,
                height: 0.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 300.0,
                      color: FlutterFlowTheme.of(context).tertiary,
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                      spreadRadius: 60.0,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0x03FFFFFF),
                    FlutterFlowTheme.of(context).secondary
                  ],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(1.0, 0.87),
                  end: AlignmentDirectional(-1.0, -0.87),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
