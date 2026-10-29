import '/components/appbar/appbar_widget.dart';
import '/components/bg_card/bg_card_widget.dart';
import '/components/f_a_q_card/f_a_q_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'f_a_qs_model.dart';
export 'f_a_qs_model.dart';

class FAQsWidget extends StatefulWidget {
  const FAQsWidget({super.key});

  static String routeName = 'FAQs';
  static String routePath = '/fAQs';

  @override
  State<FAQsWidget> createState() => _FAQsWidgetState();
}

class _FAQsWidgetState extends State<FAQsWidget> {
  late FAQsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FAQsModel());
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
                        title: 'FAQ',
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
                                  14.0, 0.0, 14.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  wrapWithModel(
                                    model: _model.fAQCardModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Create First Resume',
                                      text:
                                          'Open Resumo and tap Create Resume. Choose a template, then fill your personal details, education, and experience. You can reorder sections anytime. When you’re ready, export as PDF and review the final file before sharing.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Edit Saved Resume',
                                      text:
                                          'Go to My Resumes, select the resume, and tap Edit. Changes are saved to your draft as you update sections like summary, skills, or work history. Export again to generate an updated PDF.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Change Resume Template',
                                      text:
                                          'Open your resume, tap Template, and preview options. Switching templates won’t delete your content; it only changes layout and styling. If something looks misaligned, adjust section order or spacing in Resume Settings.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'ATS Friendly Mode',
                                      text:
                                          'ATS Mode removes decorative elements and keeps formatting simple so applicant tracking systems can read your resume easily. Enable it in Resume Settings before exporting, especially for corporate or high-volume applications.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Export PDF Quality',
                                      text:
                                          'Export PDF Quality\nIn Export Settings, choose Standard or High quality. High quality improves text rendering and layout consistency but may increase file size. If email upload limits are strict, export Standard and keep your resume under the required size.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'A4 vs Letter Size',
                                      text:
                                          'Use A4 for most countries outside the US/Canada. Use Letter for US-based applications. Selecting the correct size prevents page breaks and spacing issues when recruiters print or view your resume.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel7,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Update Contact Details',
                                      text:
                                          'Go to Profile or open Personal Information inside your resume. Update your phone, email, location, and links. Always export a fresh PDF after changing contact details to ensure the new info appears.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel8,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Add Portfolio Links',
                                      text:
                                          'Open Portfolio Links, paste your LinkedIn, website, GitHub, or Behance link, and test the URL before saving. Use clean, professional links to strengthen your resume and make it easier for recruiters to verify your work.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel9,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Fix Link Not Working',
                                      text:
                                          'If a link fails, ensure it starts with https:// and contains no spaces. Some shortened links may be blocked by companies. Try using the full URL and test again from the preview or open button.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel10,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Resume Section Order',
                                      text:
                                          'Go to Resume Settings → Section Order and drag sections to rearrange. A common order is Summary → Skills → Experience → Projects → Education. Freshers often place Education higher.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel11,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Add Work Experience',
                                      text:
                                          'In the Experience section, add job title, company, dates, and location. Keep bullet points concise and measurable. If you are a fresher, include internships, freelance projects, or volunteer work instead of leaving it blank.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel12,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Employment Gap Handling',
                                      text:
                                          'Gaps are common. Use a short explanation in your summary or include relevant training, certifications, freelance work, or personal projects during that period. Keep it honest and focus on what you gained.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel13,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Duplicate Resume Version',
                                      text:
                                          'Use Duplicate in My Resumes to create a new version for a different job. This helps you tailor keywords, reorder sections, and adjust the summary without losing your original resume.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel14,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Enable Cloud Sync',
                                      text:
                                          'Open Cloud Sync Settings and turn sync on. Connect your account if required, then tap Sync Now. Cloud sync helps restore resumes if you change phones or reinstall the app.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel15,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Restore From Backup',
                                      text:
                                          'Go to Cloud Sync → Restore and choose the latest backup. If you see duplicates, keep the newest version and archive old copies. Always export again after restoring to confirm everything looks correct.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel16,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Lost Resume Draft',
                                      text:
                                          'First, check My Resumes and search by name. If cloud sync is on, try Restore Backup. If you exported a PDF earlier, you can re-import content manually from the file.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel17,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Change App Language',
                                      text:
                                          'Change App Language\nOpen Language Settings and choose your app language. If resume language is separate, set it inside Resume Settings so section headings and date formats match your target country and job market.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel18,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Subscription Benefits',
                                      text:
                                          'Pro typically unlocks premium templates, unlimited exports, watermark removal, and advanced layout controls. Your plan details are shown in Subscription & Billing. If you changed devices, use Restore Purchase.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.fAQCardModel19,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FAQCardWidget(
                                      heading: 'Cancel Subscription',
                                      text:
                                          'Subscriptions are managed by your App Store or Google Play account. Canceling stops future renewals, but your plan usually remains active until the end of the billing period. You can still access your saved resumes.',
                                      active: _model.faqsOpen,
                                      action: (title) async {
                                        _model.faqsOpen = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                ].divide(SizedBox(height: 12.0)),
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 20.0))
                              .addToStart(SizedBox(height: 20.0))
                              .addToEnd(SizedBox(height: 20.0)),
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
