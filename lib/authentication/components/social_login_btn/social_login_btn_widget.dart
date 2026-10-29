import '/backend/firebase_auth_service.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'social_login_btn_model.dart';
export 'social_login_btn_model.dart';

class SocialLoginBtnWidget extends StatefulWidget {
  const SocialLoginBtnWidget({
    super.key,
    required this.logo,
    required this.providerId,
  });

  final String? logo;
  final String providerId;

  @override
  State<SocialLoginBtnWidget> createState() => _SocialLoginBtnWidgetState();
}

class _SocialLoginBtnWidgetState extends State<SocialLoginBtnWidget> {
  late SocialLoginBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialLoginBtnModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          try {
            final credential = await FirebaseAuthService.signInWithProvider(
              widget.providerId,
            );
            FirebaseAuthService.syncDisplayName(credential);
            if (mounted) context.goNamed('Home');
          } on FirebaseAuthException catch (error) {
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(FirebaseAuthService.errorMessage(error)),
                ),
              );
            }
          } on FirebaseException catch (error) {
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(error.message ?? 'Firebase sign-in failed.'),
                ),
              );
            }
          } on StateError catch (error) {
            if (mounted) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(error.message)));
            }
          }
        },
        child: Container(
          width: 100.0,
          height: 44.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).senary,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: FlutterFlowTheme.of(context).alternate),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: SvgPicture.network(
                  widget!.logo!,
                  width: 22.0,
                  height: 22.0,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
