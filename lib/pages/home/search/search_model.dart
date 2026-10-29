import '/backend/schema/structs/index.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/last_seen_card/last_seen_card_widget.dart';
import '/components/recent_searchcard/recent_searchcard_widget.dart';
import '/components/search_card/search_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  Local state fields for this page.

  String? search = '';

  ///  State fields for stateful widgets in this page.

  // Model for BgCard component.
  late BgCardModel bgCardModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for RecentSearchcard component.
  late RecentSearchcardModel recentSearchcardModel1;
  // Model for RecentSearchcard component.
  late RecentSearchcardModel recentSearchcardModel2;
  // Model for RecentSearchcard component.
  late RecentSearchcardModel recentSearchcardModel3;
  // Model for RecentSearchcard component.
  late RecentSearchcardModel recentSearchcardModel4;
  // Model for RecentSearchcard component.
  late RecentSearchcardModel recentSearchcardModel5;
  // Model for RecentSearchcard component.
  late RecentSearchcardModel recentSearchcardModel6;
  // Models for LastSeenCard dynamic component.
  late FlutterFlowDynamicModels<LastSeenCardModel> lastSeenCardModels;
  // Models for SearchCard dynamic component.
  late FlutterFlowDynamicModels<SearchCardModel> searchCardModels;

  @override
  void initState(BuildContext context) {
    bgCardModel = createModel(context, () => BgCardModel());
    recentSearchcardModel1 =
        createModel(context, () => RecentSearchcardModel());
    recentSearchcardModel2 =
        createModel(context, () => RecentSearchcardModel());
    recentSearchcardModel3 =
        createModel(context, () => RecentSearchcardModel());
    recentSearchcardModel4 =
        createModel(context, () => RecentSearchcardModel());
    recentSearchcardModel5 =
        createModel(context, () => RecentSearchcardModel());
    recentSearchcardModel6 =
        createModel(context, () => RecentSearchcardModel());
    lastSeenCardModels = FlutterFlowDynamicModels(() => LastSeenCardModel());
    searchCardModels = FlutterFlowDynamicModels(() => SearchCardModel());
  }

  @override
  void dispose() {
    bgCardModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    recentSearchcardModel1.dispose();
    recentSearchcardModel2.dispose();
    recentSearchcardModel3.dispose();
    recentSearchcardModel4.dispose();
    recentSearchcardModel5.dispose();
    recentSearchcardModel6.dispose();
    lastSeenCardModels.dispose();
    searchCardModels.dispose();
  }
}
