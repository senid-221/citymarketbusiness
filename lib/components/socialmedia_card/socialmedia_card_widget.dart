import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'socialmedia_card_model.dart';
export 'socialmedia_card_model.dart';

class SocialmediaCardWidget extends StatefulWidget {
  const SocialmediaCardWidget({
    super.key,
    required this.avatar,
    required this.name,
  });

  final String? avatar;
  final String? name;

  @override
  State<SocialmediaCardWidget> createState() => _SocialmediaCardWidgetState();
}

class _SocialmediaCardWidgetState extends State<SocialmediaCardWidget> {
  late SocialmediaCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialmediaCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 66.0,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              widget!.avatar!,
              width: 44.0,
              height: 44.0,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget!.name,
              'NA',
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
