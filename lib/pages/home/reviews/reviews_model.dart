import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/reviewcard/reviewcard_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'reviews_widget.dart' show ReviewsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ReviewsModel extends FlutterFlowModel<ReviewsWidget> {
  ///  Local state fields for this page.

  String selector = 'A4 (210 x 297mm)';

  String margin = 'Normal';

  String quality = '2';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for Reviewcard component.
  late ReviewcardModel reviewcardModel1;
  // Model for Reviewcard component.
  late ReviewcardModel reviewcardModel2;
  // Model for Reviewcard component.
  late ReviewcardModel reviewcardModel3;
  // Model for Reviewcard component.
  late ReviewcardModel reviewcardModel4;
  // Model for Reviewcard component.
  late ReviewcardModel reviewcardModel5;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    reviewcardModel1 = createModel(context, () => ReviewcardModel());
    reviewcardModel2 = createModel(context, () => ReviewcardModel());
    reviewcardModel3 = createModel(context, () => ReviewcardModel());
    reviewcardModel4 = createModel(context, () => ReviewcardModel());
    reviewcardModel5 = createModel(context, () => ReviewcardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    reviewcardModel1.dispose();
    reviewcardModel2.dispose();
    reviewcardModel3.dispose();
    reviewcardModel4.dispose();
    reviewcardModel5.dispose();
  }
}
