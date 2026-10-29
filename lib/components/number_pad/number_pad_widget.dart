import '/components/number_pad_button/number_pad_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'number_pad_model.dart';
export 'number_pad_model.dart';

class NumberPadWidget extends StatefulWidget {
  const NumberPadWidget({super.key});

  @override
  State<NumberPadWidget> createState() => _NumberPadWidgetState();
}

class _NumberPadWidgetState extends State<NumberPadWidget> {
  late NumberPadModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NumberPadModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        GridView(
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 2.0,
          ),
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            wrapWithModel(
              model: _model.numberPadButtonModel1,
              updateCallback: () => safeSetState(() {}),
              child: NumberPadButtonWidget(
                value: '1',
              ),
            ),
            wrapWithModel(
              model: _model.numberPadButtonModel2,
              updateCallback: () => safeSetState(() {}),
              child: NumberPadButtonWidget(
                value: '2',
              ),
            ),
            wrapWithModel(
              model: _model.numberPadButtonModel3,
              updateCallback: () => safeSetState(() {}),
              child: NumberPadButtonWidget(
                value: '3',
              ),
            ),
            wrapWithModel(
              model: _model.numberPadButtonModel4,
              updateCallback: () => safeSetState(() {}),
              child: NumberPadButtonWidget(
                value: '4',
              ),
            ),
            wrapWithModel(
              model: _model.numberPadButtonModel5,
              updateCallback: () => safeSetState(() {}),
              child: NumberPadButtonWidget(
                value: '5',
              ),
            ),
            wrapWithModel(
              model: _model.numberPadButtonModel6,
              updateCallback: () => safeSetState(() {}),
              child: NumberPadButtonWidget(
                value: '6',
              ),
            ),
            wrapWithModel(
              model: _model.numberPadButtonModel7,
              updateCallback: () => safeSetState(() {}),
              child: NumberPadButtonWidget(
                value: '7',
              ),
            ),
            wrapWithModel(
              model: _model.numberPadButtonModel8,
              updateCallback: () => safeSetState(() {}),
              child: NumberPadButtonWidget(
                value: '8',
              ),
            ),
            wrapWithModel(
              model: _model.numberPadButtonModel9,
              updateCallback: () => safeSetState(() {}),
              child: NumberPadButtonWidget(
                value: '9',
              ),
            ),
            Container(
              decoration: BoxDecoration(),
            ),
            wrapWithModel(
              model: _model.numberPadButtonModel10,
              updateCallback: () => safeSetState(() {}),
              child: NumberPadButtonWidget(
                value: '0',
              ),
            ),
            wrapWithModel(
              model: _model.numberPadButtonModel11,
              updateCallback: () => safeSetState(() {}),
              child: NumberPadButtonWidget(
                value: 'X',
              ),
            ),
          ],
        ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        ))
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: wrapWithModel(
                      model: _model.numberPadButtonModel12,
                      updateCallback: () => safeSetState(() {}),
                      child: NumberPadButtonWidget(
                        value: '1',
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.numberPadButtonModel13,
                      updateCallback: () => safeSetState(() {}),
                      child: NumberPadButtonWidget(
                        value: '2',
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.numberPadButtonModel14,
                      updateCallback: () => safeSetState(() {}),
                      child: NumberPadButtonWidget(
                        value: '3',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: wrapWithModel(
                      model: _model.numberPadButtonModel15,
                      updateCallback: () => safeSetState(() {}),
                      child: NumberPadButtonWidget(
                        value: '4',
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.numberPadButtonModel16,
                      updateCallback: () => safeSetState(() {}),
                      child: NumberPadButtonWidget(
                        value: '5',
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.numberPadButtonModel17,
                      updateCallback: () => safeSetState(() {}),
                      child: NumberPadButtonWidget(
                        value: '6',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: wrapWithModel(
                      model: _model.numberPadButtonModel18,
                      updateCallback: () => safeSetState(() {}),
                      child: NumberPadButtonWidget(
                        value: '7',
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.numberPadButtonModel19,
                      updateCallback: () => safeSetState(() {}),
                      child: NumberPadButtonWidget(
                        value: '8',
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.numberPadButtonModel20,
                      updateCallback: () => safeSetState(() {}),
                      child: NumberPadButtonWidget(
                        value: '9',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.numberPadButtonModel21,
                      updateCallback: () => safeSetState(() {}),
                      child: NumberPadButtonWidget(
                        value: '0',
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.numberPadButtonModel22,
                      updateCallback: () => safeSetState(() {}),
                      child: NumberPadButtonWidget(
                        value: 'X',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
      ],
    );
  }
}
