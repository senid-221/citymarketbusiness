import '/backend/schema/structs/index.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/fillter_chip_selector/fillter_chip_selector_widget.dart';
import '/components/filter_cips_card/filter_cips_card_widget.dart';
import '/components/sort_by_modal/sort_by_modal_widget.dart';
import '/components/vegitables_card/vegitables_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_result_model.dart';
export 'search_result_model.dart';

class SearchResultWidget extends StatefulWidget {
  const SearchResultWidget({
    super.key,
    required this.tilte,
  });

  final String? tilte;

  static String routeName = 'SearchResult';
  static String routePath = '/searchResult';

  @override
  State<SearchResultWidget> createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget> {
  late SearchResultModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchResultModel());
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
            Stack(
              children: [
                wrapWithModel(
                  model: _model.bgCardModel,
                  updateCallback: () => safeSetState(() {}),
                  child: BgCardWidget(),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0,
                                valueOrDefault<double>(
                                  MediaQuery.of(context).padding.top + 12,
                                  12.0,
                                ),
                                12.0,
                                12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FlutterFlowIconButton(
                                  borderRadius: 10.0,
                                  buttonSize: 40.0,
                                  fillColor: Colors.transparent,
                                  icon: Icon(
                                    FFIcons.karrowLeft,
                                  ),
                                  onPressed: () async {
                                    context.safePop();
                                  },
                                ),
                                Expanded(
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.safePop();
                                    },
                                    child: Container(
                                      width: 100.0,
                                      height: 46.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            14.0, 0.0, 14.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              FFIcons.ksearch,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 20.0,
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                widget!.tilte,
                                                'Search...',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context
                                          .pushNamed(FiltersWidget.routeName);
                                    },
                                    child: wrapWithModel(
                                      model: _model.filterCipsCardModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterCipsCardWidget(
                                        icon: Icon(
                                          FFIcons.kfilterHorizontal,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                        title: 'Filters',
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Color(0x98000000),
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: SortByModalWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: wrapWithModel(
                                      model: _model.filterCipsCardModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterCipsCardWidget(
                                        icon: Icon(
                                          FFIcons.karrowUpDown,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                        title: 'Sort by',
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fillterChipSelectorModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FillterChipSelectorWidget(
                                      title: 'Sales',
                                      active: _model.filterSelector,
                                      action: (title) async {
                                        _model.filterSelector = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fillterChipSelectorModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FillterChipSelectorWidget(
                                      title: 'Fast Delivery',
                                      active: _model.filterSelector,
                                      action: (title) async {
                                        _model.filterSelector = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fillterChipSelectorModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FillterChipSelectorWidget(
                                      title: 'Popular',
                                      active: _model.filterSelector,
                                      action: (title) async {
                                        _model.filterSelector = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fillterChipSelectorModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FillterChipSelectorWidget(
                                      title: 'New',
                                      active: _model.filterSelector,
                                      action: (title) async {
                                        _model.filterSelector = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                ]
                                    .divide(SizedBox(width: 12.0))
                                    .addToStart(SizedBox(width: 16.0))
                                    .addToEnd(SizedBox(width: 16.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Builder(
                                builder: (context) {
                                  final items =
                                      FFAppState().vegetablesList2.toList();

                                  return GridView.builder(
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 14.0,
                                      mainAxisSpacing: 14.0,
                                      childAspectRatio: 0.72,
                                    ),
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: items.length,
                                    itemBuilder: (context, itemsIndex) {
                                      final itemsItem = items[itemsIndex];
                                      return wrapWithModel(
                                        model: _model.vegitablesCardModels
                                            .getModel(
                                          itemsIndex.toString(),
                                          itemsIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: VegitablesCardWidget(
                                          key: Key(
                                            'Keyn2r_${itemsIndex.toString()}',
                                          ),
                                          image: valueOrDefault<String>(
                                            itemsItem.image,
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/su5g60tojfft/Berry.png',
                                          ),
                                          tag: itemsItem.quantity,
                                          title: itemsItem.name,
                                          price: itemsItem.price,
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 28.0))
                              .addToStart(SizedBox(height: 6.0))
                              .addToEnd(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
