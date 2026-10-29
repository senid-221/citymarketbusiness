import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/custom_button/custom_button_widget.dart';
import '/components/download_complite/download_complite_widget.dart';
import '/components/selector_01/selector01_widget.dart';
import '/components/tab_selector_03/tab_selector03_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'export_widget.dart' show ExportWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExportModel extends FlutterFlowModel<ExportWidget> {
  ///  Local state fields for this page.

  String selector = 'A4 (210 x 297mm)';

  String margin = 'Normal';

  String quality = '2';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for TabSelector_03 component.
  late TabSelector03Model tabSelector03Model1;
  // Model for TabSelector_03 component.
  late TabSelector03Model tabSelector03Model2;
  // Model for Selector_01 component.
  late Selector01Model selector01Model1;
  // Model for Selector_01 component.
  late Selector01Model selector01Model2;
  // Model for Selector_01 component.
  late Selector01Model selector01Model3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for CustomButton component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    tabSelector03Model1 = createModel(context, () => TabSelector03Model());
    tabSelector03Model2 = createModel(context, () => TabSelector03Model());
    selector01Model1 = createModel(context, () => Selector01Model());
    selector01Model2 = createModel(context, () => Selector01Model());
    selector01Model3 = createModel(context, () => Selector01Model());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    tabSelector03Model1.dispose();
    tabSelector03Model2.dispose();
    selector01Model1.dispose();
    selector01Model2.dispose();
    selector01Model3.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    customButtonModel.dispose();
  }
}
