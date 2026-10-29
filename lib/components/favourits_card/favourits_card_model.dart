import '/components/cart_add_button/cart_add_button_widget.dart';
import '/components/save_button_02/save_button02_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'favourits_card_widget.dart' show FavouritsCardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavouritsCardModel extends FlutterFlowModel<FavouritsCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for SaveButton_02 component.
  late SaveButton02Model saveButton02Model;
  // Model for CartAddButton component.
  late CartAddButtonModel cartAddButtonModel;

  @override
  void initState(BuildContext context) {
    saveButton02Model = createModel(context, () => SaveButton02Model());
    cartAddButtonModel = createModel(context, () => CartAddButtonModel());
  }

  @override
  void dispose() {
    saveButton02Model.dispose();
    cartAddButtonModel.dispose();
  }
}
