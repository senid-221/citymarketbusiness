import '/components/bg_card/bg_card_widget.dart';
import '/components/searchorder_card/searchorder_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'search_orders_widget.dart' show SearchOrdersWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchOrdersModel extends FlutterFlowModel<SearchOrdersWidget> {
  ///  Local state fields for this page.

  int tabSelector = 0;

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for SearchorderCard component.
  late SearchorderCardModel searchorderCardModel1;
  // Model for SearchorderCard component.
  late SearchorderCardModel searchorderCardModel2;
  // Model for SearchorderCard component.
  late SearchorderCardModel searchorderCardModel3;
  // Model for SearchorderCard component.
  late SearchorderCardModel searchorderCardModel4;
  // Model for SearchorderCard component.
  late SearchorderCardModel searchorderCardModel5;
  // Model for SearchorderCard component.
  late SearchorderCardModel searchorderCardModel6;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    searchorderCardModel1 = createModel(context, () => SearchorderCardModel());
    searchorderCardModel2 = createModel(context, () => SearchorderCardModel());
    searchorderCardModel3 = createModel(context, () => SearchorderCardModel());
    searchorderCardModel4 = createModel(context, () => SearchorderCardModel());
    searchorderCardModel5 = createModel(context, () => SearchorderCardModel());
    searchorderCardModel6 = createModel(context, () => SearchorderCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    searchorderCardModel1.dispose();
    searchorderCardModel2.dispose();
    searchorderCardModel3.dispose();
    searchorderCardModel4.dispose();
    searchorderCardModel5.dispose();
    searchorderCardModel6.dispose();
  }
}
