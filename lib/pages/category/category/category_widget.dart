import '/backend/schema/structs/index.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/category_card_01/category_card01_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/components/recently_viewd_card/recently_viewd_card_widget.dart';
import '/components/selector_04/selector04_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_model.dart';
export 'category_model.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  static String routeName = 'Category';
  static String routePath = '/category';

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget>
    with TickerProviderStateMixin {
  late CategoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().pageSelector = 'Category';
      safeSetState(() {});
    });

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
                ClipRRect(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0,
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
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: SvgPicture.network(
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/saygaq3eq0yx/shoping-logo-initial-h-premium-vector_316501-236-removebg-preview_1.svg',
                                        width: 26.0,
                                        height: 26.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'i75hy1p2' /* Categories */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 10.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                icon: Icon(
                                  Icons.favorite_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed(FavoritesWidget.routeName);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(SearchWidget.routeName);
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 46.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        14.0, 0.0, 14.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          FFIcons.ksearch,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '65fj4mru' /* Search for Vagitables..... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font:
                                                    GoogleFonts.plusJakartaSans(
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
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 10.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  wrapWithModel(
                                    model: _model.selector04Model1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Selector04Widget(
                                      title: 'All Categories',
                                      active: _model.filter,
                                      action: (title) async {
                                        _model.filter = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.selector04Model2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Selector04Widget(
                                      title: 'Quick Cook',
                                      active: _model.filter,
                                      action: (title) async {
                                        _model.filter = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.selector04Model3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Selector04Widget(
                                      title: 'Healthy Life',
                                      active: _model.filter,
                                      action: (title) async {
                                        _model.filter = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.selector04Model4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Selector04Widget(
                                      title: 'Eco Choices',
                                      active: _model.filter,
                                      action: (title) async {
                                        _model.filter = title;
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
                          ].divide(SizedBox(height: 12.0)),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              final categories =
                                  FFAppState().categories.toList();

                              return GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 14.0,
                                  mainAxisSpacing: 14.0,
                                  childAspectRatio: 0.85,
                                ),
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: categories.length,
                                itemBuilder: (context, categoriesIndex) {
                                  final categoriesItem =
                                      categories[categoriesIndex];
                                  return wrapWithModel(
                                    model: _model.categoryCard01Models.getModel(
                                      categoriesIndex.toString(),
                                      categoriesIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: CategoryCard01Widget(
                                      key: Key(
                                        'Key2i1_${categoriesIndex.toString()}',
                                      ),
                                      image: categoriesItem.image,
                                      title: categoriesItem.title,
                                    ),
                                  );
                                },
                              );
                            },
                          ),
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
                                      'ih3hpxac' /* Last Seen */,
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
                                          fontSize: 16.0,
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
                                final lastSeen =
                                    FFAppState().vegetablesList1.toList();

                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(lastSeen.length,
                                            (lastSeenIndex) {
                                      final lastSeenItem =
                                          lastSeen[lastSeenIndex];
                                      return wrapWithModel(
                                        model: _model.recentlyViewdCardModels
                                            .getModel(
                                          lastSeenIndex.toString(),
                                          lastSeenIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: RecentlyViewdCardWidget(
                                          key: Key(
                                            'Keyw1h_${lastSeenIndex.toString()}',
                                          ),
                                          image: lastSeenItem.image,
                                          title: lastSeenItem.name,
                                          price: lastSeenItem.price,
                                          discount: '-30%',
                                        ),
                                      );
                                    })
                                        .divide(SizedBox(width: 14.0))
                                        .addToStart(SizedBox(width: 16.0))
                                        .addToEnd(SizedBox(width: 16.0)),
                                  ),
                                );
                              },
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                      ]
                          .divide(SizedBox(height: 32.0))
                          .addToStart(SizedBox(height: 12.0))
                          .addToEnd(SizedBox(height: 24.0)),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.navBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: NavBarWidget(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
