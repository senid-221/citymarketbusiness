import '/backend/schema/structs/index.dart';
import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/category_selector_card/category_selector_card_widget.dart';
import '/components/choice_chip/choice_chip_widget.dart';
import '/components/custom_button/custom_button_widget.dart';
import '/components/customer_review_selector/customer_review_selector_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filters_model.dart';
export 'filters_model.dart';

class FiltersWidget extends StatefulWidget {
  const FiltersWidget({super.key});

  static String routeName = 'Filters';
  static String routePath = '/filters';

  @override
  State<FiltersWidget> createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget>
    with TickerProviderStateMixin {
  late FiltersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FiltersModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(0.9, 0.9),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.5,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            wrapWithModel(
              model: _model.bgCardModel,
              updateCallback: () => safeSetState(() {}),
              child: BgCardWidget(),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.appbarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: AppbarWidget(
                    title: 'Filters',
                    icon1: Icon(
                      FFIcons.kx,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    icon2: Icon(
                      FFIcons.khelp,
                      color: Colors.transparent,
                      size: 24.0,
                    ),
                    action1: () async {
                      context.safePop();
                    },
                    action2: () async {},
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'hmq1lahj' /* Page Size */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.plusJakartaSans(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'k99ax373' /* Form $0 to $100 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.plusJakartaSans(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Slider(
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  inactiveColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  min: 0.0,
                                  max: 100.0,
                                  value: _model.sliderValue ??= 0.0,
                                  label: _model.sliderValue?.toStringAsFixed(2),
                                  divisions: 20,
                                  onChanged: (newValue) {
                                    newValue = double.parse(
                                        newValue.toStringAsFixed(2));
                                    safeSetState(
                                        () => _model.sliderValue = newValue);
                                  },
                                ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'lk98j741' /* Categories */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.plusJakartaSans(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                final caategory =
                                    FFAppState().categories.toList();

                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(caategory.length,
                                            (caategoryIndex) {
                                      final caategoryItem =
                                          caategory[caategoryIndex];
                                      return wrapWithModel(
                                        model: _model.categorySelectorCardModels
                                            .getModel(
                                          caategoryIndex.toString(),
                                          caategoryIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CategorySelectorCardWidget(
                                          key: Key(
                                            'Keytmr_${caategoryIndex.toString()}',
                                          ),
                                          image: caategoryItem.image,
                                          title: caategoryItem.title,
                                          active: _model.categorySelector,
                                          action: (title) async {
                                            _model.categorySelector = title;
                                            safeSetState(() {});
                                          },
                                        ),
                                      );
                                    })
                                        .divide(SizedBox(width: 12.0))
                                        .addToStart(SizedBox(width: 16.0))
                                        .addToEnd(SizedBox(width: 16.0)),
                                  ),
                                );
                              },
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'pkifics9' /* Customer reviews */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.plusJakartaSans(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  wrapWithModel(
                                    model: _model.customerReviewSelectorModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CustomerReviewSelectorWidget(
                                      title: '5 Star',
                                      active: _model.rating,
                                      index: 5,
                                      action: (title) async {
                                        _model.rating = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.customerReviewSelectorModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CustomerReviewSelectorWidget(
                                      title: '4 Star',
                                      active: _model.rating,
                                      index: 4,
                                      action: (title) async {
                                        _model.rating = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.customerReviewSelectorModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CustomerReviewSelectorWidget(
                                      title: '3 Star',
                                      active: _model.rating,
                                      index: 3,
                                      action: (title) async {
                                        _model.rating = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.customerReviewSelectorModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CustomerReviewSelectorWidget(
                                      title: '2 Star',
                                      active: _model.rating,
                                      index: 2,
                                      action: (title) async {
                                        _model.rating = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.customerReviewSelectorModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CustomerReviewSelectorWidget(
                                      title: '1 Star',
                                      active: _model.rating,
                                      index: 1,
                                      action: (title) async {
                                        _model.rating = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '5kugtncu' /* Delivery time */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.plusJakartaSans(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Wrap(
                                spacing: 12.0,
                                runSpacing: 12.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  wrapWithModel(
                                    model: _model.choiceChipModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: '10min',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: '15min',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: '20min',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '5frnvfof' /* Packing */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.plusJakartaSans(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Wrap(
                                spacing: 12.0,
                                runSpacing: 12.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  wrapWithModel(
                                    model: _model.choiceChipModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Weight',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Packaged',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Piece',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'qyydndqw' /* Country */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.plusJakartaSans(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Wrap(
                                spacing: 12.0,
                                runSpacing: 12.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  wrapWithModel(
                                    model: _model.choiceChipModel7,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'China',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel8,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Turkey',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel9,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'USA',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel10,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Morocco',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel11,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Poland',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel12,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Great Britain',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel13,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'France',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel14,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Columbia',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel15,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Mexico',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel16,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'New Zealand',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel17,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Peru',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel18,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Brazil',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'eus159gl' /* Brand */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.plusJakartaSans(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Wrap(
                                spacing: 12.0,
                                runSpacing: 12.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  wrapWithModel(
                                    model: _model.choiceChipModel19,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Hortex',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel20,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Agama',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel21,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'MAAG',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel22,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Nivea',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel23,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Rexona',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel24,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Pura Vida',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.choiceChipModel25,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChoiceChipWidget(
                                      title: 'Botanica',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ]
                          .divide(SizedBox(height: 25.0))
                          .addToStart(SizedBox(height: 24.0))
                          .addToEnd(SizedBox(height: 110.0)),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation']!),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 60.0,
                      color: FlutterFlowTheme.of(context).shadow,
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 14.0, 16.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.customButtonModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CustomButtonWidget(
                                    title: 'Show results',
                                    action: () async {
                                      context.safePop();
                                    },
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
