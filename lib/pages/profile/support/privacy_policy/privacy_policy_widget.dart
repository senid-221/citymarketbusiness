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
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  static String routeName = 'PrivacyPolicy';
  static String routePath = '/privacyPolicy';

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());
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
                      title: 'Privacy Policy',
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
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: MarkdownBody(
                              data:
                                  '''# FreshOn Privacy Policy\n\n**Last Updated:** 24 Jan, 2026  \n\nWelcome to **FreshOn**! Your privacy is important to us. This Privacy Policy explains how we collect, use, disclose, and protect your information when you use the Resumo mobile application and related services (the “Service”).\n\n---\n\n## 1. Information We Collect\n\n### 1.1 Personal Information (You Provide)\nWe may collect the following when you create an account or build your resume:\n- Name\n- Email address\n- Phone number (optional)\n- Profile photo (optional)\n- Country / city (optional)\n- Login information (e.g., Google sign-in, if used)\n\n### 1.2 Resume & Career Data (You Create)\nWhen you use Resumo, you may add:\n- Work experience and job titles\n- Education details\n- Skills, certifications, projects\n- Portfolio links (LinkedIn, website, GitHub, etc.)\n- Resume summaries and other written content\n- Exported resume files (PDF) and saved drafts\n\n### 1.3 Automatically Collected Information\nWe may collect:\n- Device information (model, OS version)\n- App usage data (screens viewed, features used, crash logs)\n- IP address and approximate location (country/region level)\n- App performance diagnostics\n\n### 1.4 Payment Information (If You Subscribe)\nIf you purchase a subscription, payments are processed by the **App Store / Google Play**. We do not store your full card details. We may receive limited purchase information such as plan type, billing status, and transaction identifiers.\n\n---\n\n## 2. How We Use Your Information\n\nWe use your information to:\n- Create, edit, save, and export your resumes\n- Sync your data across devices (if cloud sync is enabled)\n- Provide customer support and respond to requests\n- Improve app performance, fix bugs, and develop new features\n- Send important service messages (e.g., account, security, billing)\n- Send optional notifications (tips, reminders, updates) if enabled by you\n\n---\n\n## 3. How We Share Your Information\n\n### 3.1 Service Providers\nWe may share limited data with trusted vendors who help us operate the Service (e.g., hosting, analytics, crash reporting). They are required to protect your data and use it only to provide services to us.\n\n### 3.2 Authentication Providers\nIf you sign in using Google (or similar), we receive basic account identifiers needed to authenticate you.\n\n### 3.3 Legal Requirements\nWe may disclose information if required by law, legal process, or to protect the rights, safety, and security of users and the Service.\n\n### 3.4 Business Changes\nIf Resumo is involved in a merger, acquisition, or asset sale, user information may be transferred as part of that transaction, subject to this policy.\n\nWe do **not** sell your personal information.\n\n---\n\n## 4. Data Storage & Security\n\nWe use reasonable security measures to protect your data, including secure transmission and access controls where applicable. However, no system is 100% secure. You are responsible for keeping your account credentials safe.\n\n---\n\n## 5. Your Choices & Rights\n\nDepending on your location, you may have the right to:\n- Access and update your information within the app\n- Delete your account and request deletion of stored data\n- Export certain data (where available)\n- Control notifications and marketing preferences\n\nYou can usually manage profile data and preferences in the app settings.\n\n---\n\n## 6. Data Retention\n\nWe keep your data only as long as needed to provide the Service and comply with legal obligations. If you delete your account, we will delete or anonymize your personal data within a reasonable period unless retention is required by law.\n\n---\n\n## 7. Cookies & Tracking Technologies\n\nResumo may use similar technologies (e.g., device identifiers, analytics SDKs) to:\n- Understand app usage\n- Improve performance and stability\n- Detect crashes and troubleshoot issues\n\nYou can limit some tracking through your device settings and permissions.\n\n---\n\n## 8. Children’s Privacy\n\nResumo is not intended for children under **13** (or the minimum age required in your region). We do not knowingly collect personal information from children. If we learn that we collected such data, we will delete it.\n\n---\n\n## 9. Third-Party Links\n\nThe app may include links to external websites (e.g., portfolio links you add). We are not responsible for the privacy practices of third-party sites. Please review their policies before sharing information.\n\n---\n\n## 10. Changes to This Policy\n\nWe may update this Privacy Policy from time to time. If changes are significant, we will notify you through the app or other appropriate means. Continued use of the Service means you accept the updated policy.\n\n---\n\n## 11. Contact Us\n\nIf you have questions or requests regarding this Privacy Policy, contact us:\n\n**Resumo Support**  \nEmail: support@resumo.com  \n''',
                              selectable: true,
                              onTapLink: (_, url, __) => launchURL(url!),
                            ),
                          ),
                        ]
                            .addToStart(SizedBox(height: 8.0))
                            .addToEnd(SizedBox(height: 24.0)),
                      ),
                    ),
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
