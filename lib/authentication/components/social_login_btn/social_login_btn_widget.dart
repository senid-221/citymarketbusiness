import '/authentication/components/login_progress_modal/login_progress_modal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'social_login_btn_model.dart';
export 'social_login_btn_model.dart';

class SocialLoginBtnWidget extends StatefulWidget {
  const SocialLoginBtnWidget({
    super.key,
    required this.logo,
  });

  final String? logo;

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
          await showDialog(
            barrierColor: Color(0x65000000),
            context: context,
            builder: (dialogContext) {
              return Dialog(
                elevation: 0,
                insetPadding: EdgeInsets.zero,
                backgroundColor: Colors.transparent,
                alignment: AlignmentDirectional(0.0, 0.0)
                    .resolve(Directionality.of(context)),
                child: LoginProgressModalWidget(),
              );
            },
          );
        },
        child: Container(
          width: 100.0,
          height: 44.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).senary,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
            ),
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
