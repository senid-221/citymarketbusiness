import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/payment_methidscard/payment_methidscard_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'payment_methods_model.dart';
export 'payment_methods_model.dart';

class PaymentMethodsWidget extends StatefulWidget {
  const PaymentMethodsWidget({super.key});

  static String routeName = 'PaymentMethods';
  static String routePath = '/paymentMethods';

  @override
  State<PaymentMethodsWidget> createState() => _PaymentMethodsWidgetState();
}

class _PaymentMethodsWidgetState extends State<PaymentMethodsWidget> {
  late PaymentMethodsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentMethodsModel());
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
                        title: 'Payment Methods',
                        icon1: Icon(
                          FFIcons.karrowLeft,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        icon2: Icon(
                          FFIcons.kplus,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        action1: () async {
                          context.safePop();
                        },
                        action2: () async {
                          context.pushNamed(AddPaymentCardWidget.routeName);
                        },
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
                                  wrapWithModel(
                                    model: _model.paymentMethidscardModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: PaymentMethidscardWidget(
                                      image:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/vyb3uavreh68/Bank_of_America_svg.svg',
                                      title: 'Bank of Ameria',
                                      hight: 28.0,
                                      status: 0,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.paymentMethidscardModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: PaymentMethidscardWidget(
                                      image:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/emdheoop4703/Citi_svg.svg',
                                      title: 'Citibank',
                                      hight: 24.0,
                                      status: 1,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.paymentMethidscardModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: PaymentMethidscardWidget(
                                      image:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/v0un750wtmuc/Visa_Inc._svg.svg',
                                      title: 'Visa',
                                      hight: 32.0,
                                      status: 1,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.paymentMethidscardModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: PaymentMethidscardWidget(
                                      image:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/wmd29f1v0yq7/Mastercard_svg.svg',
                                      title: 'Master',
                                      hight: 32.0,
                                      status: 1,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.paymentMethidscardModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: PaymentMethidscardWidget(
                                      image:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/x8cb8dlp3hs4/logos_paypal.svg',
                                      title: 'PayPal',
                                      hight: 24.0,
                                      status: 1,
                                    ),
                                  ),
                                ].divide(SizedBox(height: 14.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(
                                      AddPaymentCardWidget.routeName);
                                },
                                text: FFLocalizations.of(context).getText(
                                  'bx0f3jgx' /* Add new Card */,
                                ),
                                icon: Icon(
                                  FFIcons.kplus,
                                  size: 20.0,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: GoogleFonts.plusJakartaSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 32.0))
                              .addToStart(SizedBox(height: 8.0))
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
