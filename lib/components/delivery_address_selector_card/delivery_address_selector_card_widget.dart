import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delivery_address_selector_card_model.dart';
export 'delivery_address_selector_card_model.dart';

class DeliveryAddressSelectorCardWidget extends StatefulWidget {
  const DeliveryAddressSelectorCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.active,
    required this.action,
  });

  final Widget? icon;
  final String? title;
  final String? active;
  final Future Function(String title)? action;

  @override
  State<DeliveryAddressSelectorCardWidget> createState() =>
      _DeliveryAddressSelectorCardWidgetState();
}

class _DeliveryAddressSelectorCardWidgetState
    extends State<DeliveryAddressSelectorCardWidget> {
  late DeliveryAddressSelectorCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeliveryAddressSelectorCardModel());
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
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 36.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: widget!.icon!,
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
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ].divide(SizedBox(width: 10.0)),
                ),
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    widget!.title == widget!.active
                        ? FlutterFlowTheme.of(context).primary
                        : Colors.transparent,
                    Colors.transparent,
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: valueOrDefault<Color>(
                      widget!.title == widget!.active
                          ? FlutterFlowTheme.of(context).primary
                          : FlutterFlowTheme.of(context).alternate,
                      FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                ),
                child: Visibility(
                  visible: widget!.title == widget!.active,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            ].addToEnd(SizedBox(width: 6.0)),
          ),
        ),
      ),
    );
  }
}
