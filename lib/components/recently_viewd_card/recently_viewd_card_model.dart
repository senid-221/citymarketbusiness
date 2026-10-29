import '/components/cart_add_button/cart_add_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'recently_viewd_card_widget.dart' show RecentlyViewdCardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RecentlyViewdCardModel extends FlutterFlowModel<RecentlyViewdCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for CartAddButton component.
  late CartAddButtonModel cartAddButtonModel;

  @override
  void initState(BuildContext context) {
    cartAddButtonModel = createModel(context, () => CartAddButtonModel());
  }

  @override
  void dispose() {
    cartAddButtonModel.dispose();
  }
}
