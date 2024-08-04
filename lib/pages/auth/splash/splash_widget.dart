import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'splash_model.dart';
export 'splash_model.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  late SplashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Splash'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Play',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Urbanist',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              TextSpan(
                                text: 'ed',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Urbanist',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                    ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Urbanist',
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('SPLASH_PAGE_ログインせずに始める_BTN_ON_TAP');
                        logFirebaseEvent('Button_haptic_feedback');
                        HapticFeedback.lightImpact();
                        logFirebaseEvent('Button_navigate_to');

                        context.pushNamed('Dashboard');
                      },
                      text: 'ログインせずに始める',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('SPLASH_PAGE_アカウント作成_BTN_ON_TAP');
                          logFirebaseEvent('Button_haptic_feedback');
                          HapticFeedback.lightImpact();
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('SignUp');
                        },
                        text: 'アカウント作成',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('SPLASH_PAGE_Column_9mc7ub12_ON_TAP');
                        logFirebaseEvent('Column_navigate_to');

                        context.pushNamed('SignIn');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 24.0),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'アカウントをお持ちの方は',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  TextSpan(
                                    text: 'こちら',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.underline,
                                        ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Manrope',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
