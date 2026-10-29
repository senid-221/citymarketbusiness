import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/custom_button/custom_button_widget.dart';
import '/components/payment_method_selector_card/payment_method_selector_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'payment_method_selector_model.dart';
export 'payment_method_selector_model.dart';

class PaymentMethodSelectorWidget extends StatefulWidget {
  const PaymentMethodSelectorWidget({super.key});

  static String routeName = 'PaymentMethodSelector';
  static String routePath = '/paymentMethodSelector';

  @override
  State<PaymentMethodSelectorWidget> createState() =>
      _PaymentMethodSelectorWidgetState();
}

class _PaymentMethodSelectorWidgetState
    extends State<PaymentMethodSelectorWidget> {
  late PaymentMethodSelectorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentMethodSelectorModel());
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
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'tpsqgi32' /* Bank Transfer */,
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
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model
                                            .paymentMethodSelectorCardModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PaymentMethodSelectorCardWidget(
                                          image:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/vyb3uavreh68/Bank_of_America_svg.svg',
                                          title: 'Bank of Ameria',
                                          active: _model.paymentseleector,
                                          imagesize: 24.0,
                                          action: (title) async {
                                            _model.paymentseleector = title;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model
                                            .paymentMethodSelectorCardModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PaymentMethodSelectorCardWidget(
                                          image:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/emdheoop4703/Citi_svg.svg',
                                          title: 'Citibank',
                                          active: _model.paymentseleector,
                                          imagesize: 22.0,
                                          action: (title) async {
                                            _model.paymentseleector = title;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 12.0)),
                                  ),
                                ].divide(SizedBox(height: 14.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'p2v3y4fm' /* Credit/Debit Card */,
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
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model
                                            .paymentMethodSelectorCardModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PaymentMethodSelectorCardWidget(
                                          image:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/v0un750wtmuc/Visa_Inc._svg.svg',
                                          title: 'Visa',
                                          active: _model.paymentseleector,
                                          imagesize: 28.0,
                                          action: (title) async {
                                            _model.paymentseleector = title;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model
                                            .paymentMethodSelectorCardModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PaymentMethodSelectorCardWidget(
                                          image:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/wmd29f1v0yq7/Mastercard_svg.svg',
                                          title: 'Master',
                                          active: _model.paymentseleector,
                                          imagesize: 32.0,
                                          action: (title) async {
                                            _model.paymentseleector = title;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 12.0)),
                                  ),
                                ].divide(SizedBox(height: 14.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'whnzvriu' /* E-wallet */,
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
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model
                                            .paymentMethodSelectorCardModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PaymentMethodSelectorCardWidget(
                                          image:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/x8cb8dlp3hs4/logos_paypal.svg',
                                          title: 'PayPal',
                                          active: _model.paymentseleector,
                                          imagesize: 22.0,
                                          action: (title) async {
                                            _model.paymentseleector = title;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model
                                            .paymentMethodSelectorCardModel6,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PaymentMethodSelectorCardWidget(
                                          image:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/saygaq3eq0yx/shoping-logo-initial-h-premium-vector_316501-236-removebg-preview_1.svg',
                                          title: 'FreshOn Pay',
                                          active: _model.paymentseleector,
                                          imagesize: 22.0,
                                          action: (title) async {
                                            _model.paymentseleector = title;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 12.0)),
                                  ),
                                ].divide(SizedBox(height: 14.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'vcpyn2g1' /* Other Payment Methods */,
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
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model
                                            .paymentMethodSelectorCardModel7,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PaymentMethodSelectorCardWidget(
                                          image:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/2ww5vslb0dkf/Groupry4y4hfd.svg',
                                          title: 'Cash on delivery',
                                          active: _model.paymentseleector,
                                          imagesize: 22.0,
                                          action: (title) async {
                                            _model.paymentseleector = title;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 12.0)),
                                  ),
                                ].divide(SizedBox(height: 14.0)),
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 32.0))
                              .addToStart(SizedBox(height: 8.0))
                              .addToEnd(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        width: double.infinity,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).header,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 12.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 20.0),
                              child: wrapWithModel(
                                model: _model.customButtonModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CustomButtonWidget(
                                  title: 'Confirm',
                                  action: () async {
                                    context.safePop();
                                  },
                                ),
                              ),
                            ),
                          ],
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
