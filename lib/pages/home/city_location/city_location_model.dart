import '/components/bg_card/bg_card_widget.dart';
import '/components/enable_locationmodal/enable_locationmodal_widget.dart';
import '/components/location_card_02/location_card02_widget.dart';
import '/components/locaton_card/locaton_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'city_location_widget.dart' show CityLocationWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CityLocationModel extends FlutterFlowModel<CityLocationWidget> {
  ///  Local state fields for this page.

  String gender = 'Male';

  String active = 'NA';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for LocationCard_02 component.
  late LocationCard02Model locationCard02Model1;
  // Model for LocationCard_02 component.
  late LocationCard02Model locationCard02Model2;
  // Model for LocationCard_02 component.
  late LocationCard02Model locationCard02Model3;
  // Model for LocationCard_02 component.
  late LocationCard02Model locationCard02Model4;
  // Model for LocationCard_02 component.
  late LocationCard02Model locationCard02Model5;
  // Model for LocationCard_02 component.
  late LocationCard02Model locationCard02Model6;
  // Model for LocationCard_02 component.
  late LocationCard02Model locationCard02Model7;
  // Model for LocationCard_02 component.
  late LocationCard02Model locationCard02Model8;
  // Model for LocationCard_02 component.
  late LocationCard02Model locationCard02Model9;
  // Model for LocatonCard component.
  late LocatonCardModel locatonCardModel1;
  // Model for LocatonCard component.
  late LocatonCardModel locatonCardModel2;
  // Model for LocatonCard component.
  late LocatonCardModel locatonCardModel3;
  // Model for LocatonCard component.
  late LocatonCardModel locatonCardModel4;
  // Model for LocatonCard component.
  late LocatonCardModel locatonCardModel5;
  // Model for LocatonCard component.
  late LocatonCardModel locatonCardModel6;
  // Model for LocatonCard component.
  late LocatonCardModel locatonCardModel7;
  // Model for LocatonCard component.
  late LocatonCardModel locatonCardModel8;
  // Model for LocatonCard component.
  late LocatonCardModel locatonCardModel9;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    locationCard02Model1 = createModel(context, () => LocationCard02Model());
    locationCard02Model2 = createModel(context, () => LocationCard02Model());
    locationCard02Model3 = createModel(context, () => LocationCard02Model());
    locationCard02Model4 = createModel(context, () => LocationCard02Model());
    locationCard02Model5 = createModel(context, () => LocationCard02Model());
    locationCard02Model6 = createModel(context, () => LocationCard02Model());
    locationCard02Model7 = createModel(context, () => LocationCard02Model());
    locationCard02Model8 = createModel(context, () => LocationCard02Model());
    locationCard02Model9 = createModel(context, () => LocationCard02Model());
    locatonCardModel1 = createModel(context, () => LocatonCardModel());
    locatonCardModel2 = createModel(context, () => LocatonCardModel());
    locatonCardModel3 = createModel(context, () => LocatonCardModel());
    locatonCardModel4 = createModel(context, () => LocatonCardModel());
    locatonCardModel5 = createModel(context, () => LocatonCardModel());
    locatonCardModel6 = createModel(context, () => LocatonCardModel());
    locatonCardModel7 = createModel(context, () => LocatonCardModel());
    locatonCardModel8 = createModel(context, () => LocatonCardModel());
    locatonCardModel9 = createModel(context, () => LocatonCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    locationCard02Model1.dispose();
    locationCard02Model2.dispose();
    locationCard02Model3.dispose();
    locationCard02Model4.dispose();
    locationCard02Model5.dispose();
    locationCard02Model6.dispose();
    locationCard02Model7.dispose();
    locationCard02Model8.dispose();
    locationCard02Model9.dispose();
    locatonCardModel1.dispose();
    locatonCardModel2.dispose();
    locatonCardModel3.dispose();
    locatonCardModel4.dispose();
    locatonCardModel5.dispose();
    locatonCardModel6.dispose();
    locatonCardModel7.dispose();
    locatonCardModel8.dispose();
    locatonCardModel9.dispose();
  }
}
