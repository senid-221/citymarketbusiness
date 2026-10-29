import '/components/address_crd/address_crd_widget.dart';
import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'my_addresses_widget.dart' show MyAddressesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyAddressesModel extends FlutterFlowModel<MyAddressesWidget> {
  ///  Local state fields for this page.

  String gender = 'Male';

  String active = 'NA';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for AddressCrd component.
  late AddressCrdModel addressCrdModel1;
  // Model for AddressCrd component.
  late AddressCrdModel addressCrdModel2;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    addressCrdModel1 = createModel(context, () => AddressCrdModel());
    addressCrdModel2 = createModel(context, () => AddressCrdModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    addressCrdModel1.dispose();
    addressCrdModel2.dispose();
  }
}
