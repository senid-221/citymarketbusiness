import '/backend/schema/structs/index.dart';
import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/language_option/language_option_widget.dart';
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
import 'languages_model.dart';
export 'languages_model.dart';

class LanguagesWidget extends StatefulWidget {
  const LanguagesWidget({super.key});

  static String routeName = 'Languages';
  static String routePath = '/languages';

  @override
  State<LanguagesWidget> createState() => _LanguagesWidgetState();
}

class _LanguagesWidgetState extends State<LanguagesWidget>
    with TickerProviderStateMixin {
  late LanguagesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanguagesModel());

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
                wrapWithModel(
                  model: _model.appbarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: AppbarWidget(
                    title: 'Select Language',
                    icon1: Icon(
                      FFIcons.karrowLeft,
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
                  child: Builder(
                    builder: (context) {
                      final languages = FFAppState().appLanguages.toList();

                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children:
                              List.generate(languages.length, (languagesIndex) {
                            final languagesItem = languages[languagesIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: wrapWithModel(
                                model: _model.languageOptionModels.getModel(
                                  languagesIndex.toString(),
                                  languagesIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: LanguageOptionWidget(
                                  key: Key(
                                    'Key2kw_${languagesIndex.toString()}',
                                  ),
                                  title: valueOrDefault<String>(
                                    languagesItem.title,
                                    'Language',
                                  ),
                                  flag: languagesItem.countryFlag,
                                  selected: FFLocalizations.of(context)
                                          .languageCode ==
                                      languagesItem.langCode,
                                  selectAction: () async {
                                    setAppLanguage(
                                        context, languagesItem.langCode);
                                  },
                                ),
                              ),
                            );
                          })
                                  .divide(SizedBox(height: 14.0))
                                  .addToStart(SizedBox(height: 20.0))
                                  .addToEnd(SizedBox(height: 14.0)),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['columnOnPageLoadAnimation']!);
                    },
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
