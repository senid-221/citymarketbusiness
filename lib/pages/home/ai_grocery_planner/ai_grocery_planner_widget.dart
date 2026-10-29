import '/components/ai_selector_card_01/ai_selector_card01_widget.dart';
import '/components/ai_selector_card_02/ai_selector_card02_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/custom_button/custom_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ai_grocery_planner_model.dart';
export 'ai_grocery_planner_model.dart';

class AiGroceryPlannerWidget extends StatefulWidget {
  const AiGroceryPlannerWidget({super.key});

  static String routeName = 'AiGroceryPlanner';
  static String routePath = '/aiGroceryPlanner';

  @override
  State<AiGroceryPlannerWidget> createState() => _AiGroceryPlannerWidgetState();
}

class _AiGroceryPlannerWidgetState extends State<AiGroceryPlannerWidget> {
  late AiGroceryPlannerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AiGroceryPlannerModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0,
                              valueOrDefault<double>(
                                MediaQuery.of(context).padding.top + 12,
                                12.0,
                              ),
                              16.0,
                              12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 10.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                icon: Icon(
                                  FFIcons.karrowLeft,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.safePop();
                                },
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: valueOrDefault<Color>(
                                          _model.pageViewCurrentIndex >= 0
                                              ? FlutterFlowTheme.of(context)
                                                  .secondary
                                              : Color(0x3382CC15),
                                          Color(0x3382CC15),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                    ),
                                    Container(
                                      width: 50.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: valueOrDefault<Color>(
                                          _model.pageViewCurrentIndex >= 1
                                              ? FlutterFlowTheme.of(context)
                                                  .secondary
                                              : Color(0x3382CC15),
                                          Color(0x3382CC15),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                    ),
                                    Container(
                                      width: 50.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: valueOrDefault<Color>(
                                          _model.pageViewCurrentIndex >= 2
                                              ? FlutterFlowTheme.of(context)
                                                  .secondary
                                              : Color(0x3382CC15),
                                          Color(0x3382CC15),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          if (_model.pageViewCurrentIndex ==
                                              1) {
                                            return Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '3788kadc' /* 2 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.baiJamjuree(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            );
                                          } else if (_model
                                                  .pageViewCurrentIndex ==
                                              2) {
                                            return Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'si7pkwqy' /* 3 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.baiJamjuree(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            );
                                          } else {
                                            return Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'xd6b1p7k' /* 1 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.baiJamjuree(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            );
                                          }
                                        },
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'bxpdbcww' /* /3 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.baiJamjuree(
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
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: PageView(
                            controller: _model.pageViewController ??=
                                PageController(initialPage: 0),
                            onPageChanged: (_) => safeSetState(() {}),
                            scrollDirection: Axis.horizontal,
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/vnlr1eoejoqi/LunaAIBots_(1).png',
                                            width: 280.0,
                                            height: 280.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'r8g5nl0g' /* How often do you shop? */,
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
                                                        fontSize: 24.0,
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
                                                'iw9ppobs' /* This helps Luna plan the perfe... */,
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
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                      ].divide(SizedBox(height: 20.0)),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model:
                                                _model.aiSelectorCard01Model1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: AiSelectorCard01Widget(
                                              title: 'Weekly',
                                              subtitle: 'Once every week',
                                              active: _model.selector1,
                                              action: (title) async {
                                                _model.selector1 = title;
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.aiSelectorCard01Model2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: AiSelectorCard01Widget(
                                              title: 'Twice a week',
                                              subtitle: 'Every 3-4 days',
                                              active: _model.selector1,
                                              action: (title) async {
                                                _model.selector1 = title;
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.aiSelectorCard01Model3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: AiSelectorCard01Widget(
                                              title: 'Monthly',
                                              subtitle: 'Once a month',
                                              active: _model.selector1,
                                              action: (title) async {
                                                _model.selector1 = title;
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 14.0)),
                                      ),
                                    ),
                                  ]
                                      .divide(SizedBox(height: 32.0))
                                      .addToStart(SizedBox(height: 16.0))
                                      .addToEnd(SizedBox(height: 15.0)),
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/r34kfl5xxwx4/LunaAIBots_(2).png',
                                            width: 280.0,
                                            height: 280.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'qbof4s6s' /* What's your meal style? */,
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
                                                        fontSize: 24.0,
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
                                                'xb2z1mbn' /* Choose all that apply, Luna wi... */,
                                              ),
                                              textAlign: TextAlign.center,
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
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                      ].divide(SizedBox(height: 20.0)),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model:
                                                _model.aiSelectorCard02Model1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: AiSelectorCard02Widget(
                                              title: 'Healthy Life',
                                              subtitle:
                                                  'Fresh and organic focus',
                                              active: _model.selector2,
                                              image:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/jdht46xqmbyt/AiSelectorVesualImage_(3).png',
                                              action: (title) async {
                                                _model.selector2 = title;
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.aiSelectorCard02Model2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: AiSelectorCard02Widget(
                                              title: 'Quick Cook',
                                              subtitle: 'Fast meal prep',
                                              active: _model.selector2,
                                              image:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/7nmg9t60wsmt/AiSelectorVesualImage_(2).png',
                                              action: (title) async {
                                                _model.selector2 = title;
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.aiSelectorCard02Model3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: AiSelectorCard02Widget(
                                              title: 'Family Size',
                                              subtitle: 'Large portions',
                                              active: _model.selector2,
                                              image:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/qk8t8837rhug/AiSelectorVesualImage_(1).png',
                                              action: (title) async {
                                                _model.selector2 = title;
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 14.0)),
                                      ),
                                    ),
                                  ]
                                      .divide(SizedBox(height: 32.0))
                                      .addToStart(SizedBox(height: 16.0))
                                      .addToEnd(SizedBox(height: 15.0)),
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/irja35yytu9r/LunaAIBots_(3).png',
                                            width: 280.0,
                                            height: 280.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'eftj2rsb' /* Any dietary preferences? */,
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
                                                        fontSize: 24.0,
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
                                                '5g2n13ny' /* Luna will filter suggestions b... */,
                                              ),
                                              textAlign: TextAlign.center,
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
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                      ].divide(SizedBox(height: 20.0)),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model:
                                                _model.aiSelectorCard02Model4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: AiSelectorCard02Widget(
                                              title: 'Vegan',
                                              subtitle: 'Plant-based only',
                                              active: _model.selector3,
                                              image:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/rcftnpestnr7/AiSelectorVesualImage_(6).png',
                                              action: (title) async {
                                                _model.selector3 = title;
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.aiSelectorCard02Model5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: AiSelectorCard02Widget(
                                              title: 'Low Sugar',
                                              subtitle: 'Reduced sugar options',
                                              active: _model.selector3,
                                              image:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/nnk2veq2ny0p/AiSelectorVesualImage_(5).png',
                                              action: (title) async {
                                                _model.selector3 = title;
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.aiSelectorCard02Model6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: AiSelectorCard02Widget(
                                              title: 'No Restrictions',
                                              subtitle: 'I eat everything',
                                              active: _model.selector3,
                                              image:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/a16mubqof00o/AiSelectorVesualImage_(4).png',
                                              action: (title) async {
                                                _model.selector3 = title;
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 14.0)),
                                      ),
                                    ),
                                  ]
                                      .divide(SizedBox(height: 32.0))
                                      .addToStart(SizedBox(height: 16.0))
                                      .addToEnd(SizedBox(height: 15.0)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                        ),
                        child: Builder(
                          builder: (context) {
                            if (_model.pageViewCurrentIndex == 2) {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 16.0, 20.0),
                                child: wrapWithModel(
                                  model: _model.customButtonModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CustomButtonWidget(
                                    title: 'Save & Continue',
                                    action: () async {
                                      context.pushNamed(
                                          AiGroceryPlannerProcessingWidget
                                              .routeName);
                                    },
                                  ),
                                ),
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 16.0, 20.0),
                                child: wrapWithModel(
                                  model: _model.customButtonModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CustomButtonWidget(
                                    title: 'Continue',
                                    action: () async {
                                      await _model.pageViewController?.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ),
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
