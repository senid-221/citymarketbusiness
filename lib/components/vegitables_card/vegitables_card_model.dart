import '/components/cart_add_button/cart_add_button_widget.dart';
import '/components/save_button_01/save_button01_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'vegitables_card_widget.dart' show VegitablesCardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VegitablesCardModel extends FlutterFlowModel<VegitablesCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for SaveButton_01 component.
  late SaveButton01Model saveButton01Model;
  // Model for CartAddButton component.
  late CartAddButtonModel cartAddButtonModel;

  @override
  void initState(BuildContext context) {
    saveButton01Model = createModel(context, () => SaveButton01Model());
    cartAddButtonModel = createModel(context, () => CartAddButtonModel());
  }

  @override
  void dispose() {
    saveButton01Model.dispose();
    cartAddButtonModel.dispose();
  }
}
