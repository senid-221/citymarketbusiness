import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/support_category_card/support_category_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'help_center_widget.dart' show HelpCenterWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HelpCenterModel extends FlutterFlowModel<HelpCenterWidget> {
  ///  Local state fields for this page.

  String selectedTab = 'FAQ';

  String faqsOpen = 'What Is Fixify?';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for SupportCategoryCard component.
  late SupportCategoryCardModel supportCategoryCardModel1;
  // Model for SupportCategoryCard component.
  late SupportCategoryCardModel supportCategoryCardModel2;
  // Model for SupportCategoryCard component.
  late SupportCategoryCardModel supportCategoryCardModel3;
  // Model for SupportCategoryCard component.
  late SupportCategoryCardModel supportCategoryCardModel4;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    appbarModel = createModel(context, () => AppbarModel());
    supportCategoryCardModel1 =
        createModel(context, () => SupportCategoryCardModel());
    supportCategoryCardModel2 =
        createModel(context, () => SupportCategoryCardModel());
    supportCategoryCardModel3 =
        createModel(context, () => SupportCategoryCardModel());
    supportCategoryCardModel4 =
        createModel(context, () => SupportCategoryCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    appbarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    supportCategoryCardModel1.dispose();
    supportCategoryCardModel2.dispose();
    supportCategoryCardModel3.dispose();
    supportCategoryCardModel4.dispose();
  }
}
