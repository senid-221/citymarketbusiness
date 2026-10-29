import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_selector_card_model.dart';
export 'category_selector_card_model.dart';

class CategorySelectorCardWidget extends StatefulWidget {
  const CategorySelectorCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.active,
    required this.action,
  });

  final String? image;
  final String? title;
  final String? active;
  final Future Function(String title)? action;

  @override
  State<CategorySelectorCardWidget> createState() =>
      _CategorySelectorCardWidgetState();
}

class _CategorySelectorCardWidgetState
    extends State<CategorySelectorCardWidget> {
  late CategorySelectorCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategorySelectorCardModel());
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
              width: 90.0,
              height: 70.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    valueOrDefault<Color>(
                      widget!.title == widget!.active
                          ? FlutterFlowTheme.of(context).primary
                          : FlutterFlowTheme.of(context).secondaryBackground,
                      FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    valueOrDefault<Color>(
                      widget!.title == widget!.active
                          ? FlutterFlowTheme.of(context).gradient
                          : FlutterFlowTheme.of(context).secondaryBackground,
                      FlutterFlowTheme.of(context).secondaryBackground,
                    )
                  ],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(-1.0, 0.0),
                  end: AlignmentDirectional(1.0, 0),
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(14.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    valueOrDefault<String>(
                      widget!.image,
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/al3s7g90mxr5/Image_Placeholdersafaf.png',
                    ),
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.contain,
                  ),
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
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
