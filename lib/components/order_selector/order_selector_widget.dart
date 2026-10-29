import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_selector_model.dart';
export 'order_selector_model.dart';

class OrderSelectorWidget extends StatefulWidget {
  const OrderSelectorWidget({
    super.key,
    required this.title,
    required this.active,
    required this.action,
    required this.index,
  });

  final String? title;
  final int? active;
  final Future Function(int index)? action;
  final int? index;

  @override
  State<OrderSelectorWidget> createState() => _OrderSelectorWidgetState();
}

class _OrderSelectorWidgetState extends State<OrderSelectorWidget> {
  late OrderSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderSelectorModel());
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
          widget!.index!,
        );
      },
      child: Container(
        width: 100.0,
        height: 44.0,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
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
                        color: valueOrDefault<Color>(
                          widget!.index == widget!.active
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).secondaryText,
                          FlutterFlowTheme.of(context).secondaryText,
                        ),
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 1.5,
              decoration: BoxDecoration(
                color: valueOrDefault<Color>(
                  widget!.index == widget!.active
                      ? FlutterFlowTheme.of(context).primary
                      : Colors.transparent,
                  Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
