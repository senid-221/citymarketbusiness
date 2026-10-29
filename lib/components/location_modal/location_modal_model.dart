import '/components/custom_button/custom_button_widget.dart';
import '/components/delivery_address_selector_card/delivery_address_selector_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'location_modal_widget.dart' show LocationModalWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LocationModalModel extends FlutterFlowModel<LocationModalWidget> {
  ///  Local state fields for this component.

  String address = 'Unit 9C, Market Street';

  ///  State fields for stateful widgets in this component.

  // Model for DeliveryAddressSelectorCard component.
  late DeliveryAddressSelectorCardModel deliveryAddressSelectorCardModel1;
  // Model for DeliveryAddressSelectorCard component.
  late DeliveryAddressSelectorCardModel deliveryAddressSelectorCardModel2;
  // Model for CustomButton component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    deliveryAddressSelectorCardModel1 =
        createModel(context, () => DeliveryAddressSelectorCardModel());
    deliveryAddressSelectorCardModel2 =
        createModel(context, () => DeliveryAddressSelectorCardModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    deliveryAddressSelectorCardModel1.dispose();
    deliveryAddressSelectorCardModel2.dispose();
    customButtonModel.dispose();
  }
}
