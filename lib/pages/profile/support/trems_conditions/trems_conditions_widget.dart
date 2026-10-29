import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trems_conditions_model.dart';
export 'trems_conditions_model.dart';

class TremsConditionsWidget extends StatefulWidget {
  const TremsConditionsWidget({super.key});

  static String routeName = 'TremsConditions';
  static String routePath = '/tremsConditions';

  @override
  State<TremsConditionsWidget> createState() => _TremsConditionsWidgetState();
}

class _TremsConditionsWidgetState extends State<TremsConditionsWidget> {
  late TremsConditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TremsConditionsModel());
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
        body: SafeArea(
          top: true,
          child: Stack(
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
                          title: 'Trems & Conditions',
                          icon1: Icon(
                            FFIcons.karrowLeft,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          icon2: Icon(
                            FFIcons.kdotsVertical,
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
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: MarkdownBody(
                                          data:
                                              '''#FreshOn Terms & Conditions\n\n**Last Updated:** 24 Jan, 2026  \n\nWelcome to **FreshOn**! These Terms & Conditions (“Terms”) govern your access to and use of the Resumo mobile application and related services (the “Service”). By accessing or using Resumo, you agree to these Terms. If you do not agree, do not use the Service.\n\n---\n\n## 1. Eligibility & Account\n\n### 1.1 Who Can Use Resumo  \nYou must be at least **13 years old** (or the minimum legal age in your country) to use Resumo. If you are under the age of majority, you confirm you have permission from a parent/guardian.\n\n### 1.2 Account Information  \nYou agree to provide accurate information and keep your account details updated. You are responsible for maintaining the security of your account and for all activity under your account.\n\n---\n\n## 2. Service Overview\n\nResumo helps users create, edit, and export resumes and related career documents. Features may include templates, formatting tools, exporting (PDF), cloud sync (if enabled), and optional premium features.\n\nWe may update, modify, or discontinue parts of the Service at any time to improve performance or add features.\n\n---\n\n## 3. User Content & Ownership\n\n### 3.1 Your Content  \n“User Content” includes all data you enter or upload in Resumo, such as your name, education, experience, skills, links, and resume files. **You own your User Content.**\n\n### 3.2 Permission to Operate the Service  \nBy using Resumo, you grant us a limited license to store, process, and display your User Content **only to provide and improve the Service** (for example, generating a resume layout, saving drafts, exporting files).\n\n### 3.3 Responsibility for Your Content  \nYou are responsible for the accuracy and legality of your User Content. Do not upload content that is unlawful, harmful, or violates someone else’s rights.\n\n---\n\n## 4. Acceptable Use\n\nYou agree not to:\n- Use Resumo for illegal or fraudulent purposes  \n- Attempt to hack, disrupt, or reverse engineer the Service  \n- Upload malware or harmful code  \n- Misuse templates or content in ways that infringe copyrights or trademarks  \n- Impersonate others or submit false identity information  \n\nWe may suspend or terminate access if you violate these Terms.\n\n---\n\n## 5. Templates, AI Features & Outputs (If Applicable)\n\n### 5.1 Templates  \nResumo templates are provided for personal use to create your resumes. You may export resumes created using templates, but you may not resell or redistribute templates as standalone assets.\n\n### 5.2 AI Tools (Optional)  \nIf Resumo offers AI writing or suggestions, outputs are generated based on your inputs. You are responsible for reviewing and verifying all outputs before use. Resumo does not guarantee hiring outcomes or accuracy.\n\n---\n\n## 6. Exporting & Files\n\nResume exports (e.g., PDF) depend on your device, settings, and template choices. You are responsible for reviewing exported files before submitting them to employers or platforms.\n\n---\n\n## 7. Subscriptions, Billing & Payments (If Applicable)\n\n### 7.1 Paid Features  \nSome features may require a subscription or one-time purchase. Pricing and benefits will be shown clearly before purchase.\n\n### 7.2 Auto-Renewal  \nIf you purchase a subscription, it may **auto-renew** unless canceled before the renewal date, according to your app store’s rules.\n\n### 7.3 Trials & Refunds  \nTrials (if offered) convert to paid subscriptions unless canceled before the trial ends. Refunds are handled according to the **Apple App Store / Google Play** policies.\n\n### 7.4 Restore Purchases  \nIf supported, you can restore eligible purchases through the app.\n\n---\n\n## 8. Privacy\n\nYour use of Resumo is also governed by our Privacy Policy. Please review it to understand how we collect and use information.\n\n---\n\n## 9. Third-Party Services\n\nResumo may integrate with third-party services (e.g., sign-in providers, analytics, cloud storage). Their services are governed by their own terms and policies. Resumo is not responsible for third-party services.\n\n---\n\n## 10. Disclaimer\n\nResumo is provided “as is” and “as available.” While we aim for high reliability, we do not guarantee that the Service will be error-free or uninterrupted.\n\nResumo does not provide professional legal, financial, or employment advice.\n\n---\n\n## 11. Limitation of Liability\n\nTo the maximum extent permitted by law, Resumo and its team will not be liable for any indirect, incidental, special, or consequential damages arising from your use of the Service (including loss of data, missed opportunities, or resume rejections).\n\n---\n\n## 12. Termination\n\nYou may stop using Resumo at any time. We may suspend or terminate your access if:\n- You violate these Terms  \n- We are required to do so by law  \n- The Service is discontinued  \n\nIf you delete your account, access to your saved content may be removed, subject to applicable laws and retention requirements.\n\n---\n\n## 13. Changes to These Terms\n\nWe may update these Terms from time to time. If changes are significant, we may notify you through the app or other reasonable means. Continued use of Resumo after updates means you accept the updated Terms.\n\n---\n\n## 14. Contact Us\n\nIf you have questions about these Terms, contact us:\n\n**Resumo Support**  \nEmail: support@resumo.com  \n\'\n''',
                                          selectable: true,
                                          onTapLink: (_, url, __) =>
                                              launchURL(url!),
                                        ),
                                      ),
                                    ]
                                        .addToStart(SizedBox(height: 8.0))
                                        .addToEnd(SizedBox(height: 24.0)),
                                  ),
                                ),
                              ),
                            ]
                                .addToStart(SizedBox(height: 4.0))
                                .addToEnd(SizedBox(height: 12.0)),
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
      ),
    );
  }
}
