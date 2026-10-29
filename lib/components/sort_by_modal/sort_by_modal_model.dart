import '/components/sortby_optio_selector/sortby_optio_selector_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'sort_by_modal_widget.dart' show SortByModalWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SortByModalModel extends FlutterFlowModel<SortByModalWidget> {
  ///  Local state fields for this component.

  String selector = 'In the next 3 days';

  ///  State fields for stateful widgets in this component.

  // Model for SortbyOptioSelector component.
  late SortbyOptioSelectorModel sortbyOptioSelectorModel1;
  // Model for SortbyOptioSelector component.
  late SortbyOptioSelectorModel sortbyOptioSelectorModel2;
  // Model for SortbyOptioSelector component.
  late SortbyOptioSelectorModel sortbyOptioSelectorModel3;
  // Model for SortbyOptioSelector component.
  late SortbyOptioSelectorModel sortbyOptioSelectorModel4;
  // Model for SortbyOptioSelector component.
  late SortbyOptioSelectorModel sortbyOptioSelectorModel5;

  @override
  void initState(BuildContext context) {
    sortbyOptioSelectorModel1 =
        createModel(context, () => SortbyOptioSelectorModel());
    sortbyOptioSelectorModel2 =
        createModel(context, () => SortbyOptioSelectorModel());
    sortbyOptioSelectorModel3 =
        createModel(context, () => SortbyOptioSelectorModel());
    sortbyOptioSelectorModel4 =
        createModel(context, () => SortbyOptioSelectorModel());
    sortbyOptioSelectorModel5 =
        createModel(context, () => SortbyOptioSelectorModel());
  }

  @override
  void dispose() {
    sortbyOptioSelectorModel1.dispose();
    sortbyOptioSelectorModel2.dispose();
    sortbyOptioSelectorModel3.dispose();
    sortbyOptioSelectorModel4.dispose();
    sortbyOptioSelectorModel5.dispose();
  }
}
