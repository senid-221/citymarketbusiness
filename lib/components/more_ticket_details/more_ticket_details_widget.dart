import '/components/nav_btn_08/nav_btn08_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'more_ticket_details_model.dart';
export 'more_ticket_details_model.dart';

class MoreTicketDetailsWidget extends StatefulWidget {
  const MoreTicketDetailsWidget({super.key});

  @override
  State<MoreTicketDetailsWidget> createState() =>
      _MoreTicketDetailsWidgetState();
}

class _MoreTicketDetailsWidgetState extends State<MoreTicketDetailsWidget> {
  late MoreTicketDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoreTicketDetailsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12.0),
        topRight: Radius.circular(12.0),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 32.0,
              height: 4.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
                borderRadius: BorderRadius.circular(2.0),
              ),
            ),
            wrapWithModel(
              model: _model.navBtn08Model1,
              updateCallback: () => safeSetState(() {}),
              child: NavBtn08Widget(
                leadingIcon: Icon(
                  FFIcons.kchecks,
                  color: FlutterFlowTheme.of(context).success,
                  size: 20.0,
                ),
                title: 'Mark as resolve',
                textColor: FlutterFlowTheme.of(context).success,
              ),
            ),
            wrapWithModel(
              model: _model.navBtn08Model2,
              updateCallback: () => safeSetState(() {}),
              child: NavBtn08Widget(
                leadingIcon: Icon(
                  FFIcons.kalertTriangle,
                  color: FlutterFlowTheme.of(context).error,
                  size: 20.0,
                ),
                title: 'Report',
                textColor: FlutterFlowTheme.of(context).error,
              ),
            ),
          ].addToStart(SizedBox(height: 12.0)).addToEnd(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
