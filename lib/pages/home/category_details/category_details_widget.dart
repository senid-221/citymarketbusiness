import '/backend/schema/structs/index.dart';
import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/fillter_chip_selector/fillter_chip_selector_widget.dart';
import '/components/filter_cips_card/filter_cips_card_widget.dart';
import '/components/sort_by_modal/sort_by_modal_widget.dart';
import '/components/vegitables_card/vegitables_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_details_model.dart';
export 'category_details_model.dart';

class CategoryDetailsWidget extends StatefulWidget {
  const CategoryDetailsWidget({
    super.key,
    required this.tilte,
  });

  final String? tilte;

  static String routeName = 'CategoryDetails';
  static String routePath = '/categoryDetails';

  @override
  State<CategoryDetailsWidget> createState() => _CategoryDetailsWidgetState();
}

class _CategoryDetailsWidgetState extends State<CategoryDetailsWidget> {
  late CategoryDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryDetailsModel());
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
                    wrapWithModel(
                      model: _model.appbarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: AppbarWidget(
                        title: valueOrDefault<String>(
                          widget!.tilte,
                          'Veggies',
                        ),
                        icon1: Icon(
                          FFIcons.karrowLeft,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        icon2: Icon(
                          FFIcons.ksearch,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        action1: () async {
                          context.safePop();
                        },
                        action2: () async {
                          context.pushNamed(SearchWidget.routeName);
                        },
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
                                  final products =
                                      FFAppState().vegetablesList2.toList();

                                  return MasonryGridView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                    ),
                                    crossAxisSpacing: 14.0,
                                    mainAxisSpacing: 14.0,
                                    itemCount: products.length,
                                    padding: EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      0,
                                      0,
                                    ),
                                    shrinkWrap: true,
                                    itemBuilder: (context, productsIndex) {
                                      final productsItem =
                                          products[productsIndex];
                                      return wrapWithModel(
                                        model: _model.vegitablesCardModels
                                            .getModel(
                                          productsIndex.toString(),
                                          productsIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: VegitablesCardWidget(
                                          key: Key(
                                            'Key8w2_${productsIndex.toString()}',
                                          ),
                                          image: valueOrDefault<String>(
                                            productsItem.image,
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/su5g60tojfft/Berry.png',
                                          ),
                                          tag: productsItem.quantity,
                                          title: productsItem.name,
                                          price: productsItem.price,
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 16.0))
                              .addToStart(SizedBox(height: 12.0))
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
