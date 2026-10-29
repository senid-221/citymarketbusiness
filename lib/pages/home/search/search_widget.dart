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
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_model.dart';
export 'search_model.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  static String routeName = 'Search';
  static String routePath = '/search';

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late SearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchModel());

    _model.textController ??= TextEditingController(text: _model.search);
    _model.textFieldFocusNode ??= FocusNode();
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
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              FlutterFlowTheme.of(context).primary,
                              FlutterFlowTheme.of(context).gradient
                            ],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(-1.0, 0.0),
                            end: AlignmentDirectional(1.0, 0),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0,
                                        valueOrDefault<double>(
                                          MediaQuery.of(context).padding.top +
                                              24,
                                          24.0,
                                        ),
                                        12.0,
                                        12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderRadius: 10.0,
                                          buttonSize: 40.0,
                                          fillColor: Color(0x1AEFEEEE),
                                          icon: Icon(
                                            FFIcons.karrowLeft,
                                            color: Colors.white,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            context.safePop();
                                          },
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'gtmw1y6q' /* Search */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font:
                                                    GoogleFonts.plusJakartaSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Colors.white,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderRadius: 10.0,
                                          buttonSize: 40.0,
                                          fillColor: Color(0x19EFEEEE),
                                          icon: Icon(
                                            FFIcons.kfilterHorizontal,
                                            color: Colors.white,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            context.pushNamed(
                                                FiltersWidget.routeName);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.textController',
                                        Duration(milliseconds: 100),
                                        () => safeSetState(() {}),
                                      ),
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.plusJakartaSans(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '3oy2zq44' /* Search for Vegetables... */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.plusJakartaSans(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                12.0, 18.0, 12.0, 18.0),
                                        prefixIcon: Icon(
                                          FFIcons.ksearch,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                        suffixIcon: _model
                                                .textController!.text.isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  _model.textController
                                                      ?.clear();
                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.clear,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
                                                ),
                                              )
                                            : null,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.plusJakartaSans(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
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
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ]
                                  .divide(SizedBox(height: 12.0))
                                  .addToEnd(SizedBox(height: 12.0)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          if (_model.textController.text == null ||
                              _model.textController.text == '') {
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'z7ao8gk9' /* Recent Search */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '33jf9ykt' /* Clear all */,
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
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model:
                                                  _model.recentSearchcardModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: RecentSearchcardWidget(
                                                title: 'Banana',
                                                action: (title) async {
                                                  _model.search = title;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    SearchResultWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'tilte': serializeParam(
                                                        title,
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.recentSearchcardModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: RecentSearchcardWidget(
                                                title: 'Lemon',
                                                action: (title) async {
                                                  _model.search = title;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    SearchResultWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'tilte': serializeParam(
                                                        title,
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.recentSearchcardModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: RecentSearchcardWidget(
                                                title: 'Strawberry',
                                                action: (title) async {
                                                  _model.search = title;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    SearchResultWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'tilte': serializeParam(
                                                        title,
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.recentSearchcardModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: RecentSearchcardWidget(
                                                title: 'Orange',
                                                action: (title) async {
                                                  _model.search = title;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    SearchResultWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'tilte': serializeParam(
                                                        title,
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.recentSearchcardModel5,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: RecentSearchcardWidget(
                                                title: 'Watermelon',
                                                action: (title) async {
                                                  _model.search = title;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    SearchResultWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'tilte': serializeParam(
                                                        title,
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.recentSearchcardModel6,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: RecentSearchcardWidget(
                                                title: 'Kiwi',
                                                action: (title) async {
                                                  _model.search = title;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    SearchResultWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'tilte': serializeParam(
                                                        title,
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 22.0)),
                                        ),
                                      ].divide(SizedBox(height: 24.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'itnbqj7y' /* Last Seen */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Builder(
                                          builder: (context) {
                                            final lasrSeen = FFAppState()
                                                .vegetablesList1
                                                .toList();

                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: lasrSeen.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 14.0),
                                              itemBuilder:
                                                  (context, lasrSeenIndex) {
                                                final lasrSeenItem =
                                                    lasrSeen[lasrSeenIndex];
                                                return wrapWithModel(
                                                  model: _model
                                                      .lastSeenCardModels
                                                      .getModel(
                                                    lasrSeenIndex.toString(),
                                                    lasrSeenIndex,
                                                  ),
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: LastSeenCardWidget(
                                                    key: Key(
                                                      'Keyybq_${lasrSeenIndex.toString()}',
                                                    ),
                                                    image:
                                                        valueOrDefault<String>(
                                                      lasrSeenItem.image,
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/zxic8azi2lre/Grape.png',
                                                    ),
                                                    title:
                                                        valueOrDefault<String>(
                                                      lasrSeenItem.name,
                                                      'Cavendish Banana',
                                                    ),
                                                    price:
                                                        valueOrDefault<String>(
                                                      lasrSeenItem.price,
                                                      '\$20.00 ',
                                                    ),
                                                    quantity:
                                                        lasrSeenItem.quantity,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ].divide(SizedBox(height: 20.0)),
                                    ),
                                  ),
                                ]
                                    .divide(SizedBox(height: 40.0))
                                    .addToStart(SizedBox(height: 14.0))
                                    .addToEnd(SizedBox(height: 24.0)),
                              ),
                            );
                          } else {
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final searchoption = FFAppState()
                                            .vegetablesList1
                                            .toList();

                                        return ListView.separated(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: searchoption.length,
                                          separatorBuilder: (_, __) =>
                                              SizedBox(height: 14.0),
                                          itemBuilder:
                                              (context, searchoptionIndex) {
                                            final searchoptionItem =
                                                searchoption[searchoptionIndex];
                                            return wrapWithModel(
                                              model: _model.searchCardModels
                                                  .getModel(
                                                searchoptionIndex.toString(),
                                                searchoptionIndex,
                                              ),
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: SearchCardWidget(
                                                key: Key(
                                                  'Keyzsj_${searchoptionIndex.toString()}',
                                                ),
                                                image: searchoptionItem.image,
                                                title: searchoptionItem.name,
                                                action: (title) async {
                                                  _model.search = title;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    SearchResultWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'tilte': serializeParam(
                                                        title,
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ]
                                    .divide(SizedBox(height: 40.0))
                                    .addToStart(SizedBox(height: 14.0))
                                    .addToEnd(SizedBox(height: 100.0)),
                              ),
                            );
                          }
                        },
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
