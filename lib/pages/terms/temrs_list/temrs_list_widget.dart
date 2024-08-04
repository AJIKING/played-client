import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'temrs_list_model.dart';
export 'temrs_list_model.dart';

class TemrsListWidget extends StatefulWidget {
  const TemrsListWidget({super.key});

  @override
  State<TemrsListWidget> createState() => _TemrsListWidgetState();
}

class _TemrsListWidgetState extends State<TemrsListWidget> {
  late TemrsListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TemrsListModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'TemrsList'});
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
              Container(
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  boxShadow: [
                    BoxShadow(
                      color: FlutterFlowTheme.of(context).secondaryText,
                      offset: Offset(
                        -2.0,
                        0.0,
                      ),
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'TEMRS_LIST_arrow_back_rounded_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_back');
                        context.pop();
                      },
                    ),
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Play',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Urbanist',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          TextSpan(
                            text: 'ed',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Urbanist',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'TEMRS_LIST_PAGE_ListTile_oiilytvi_ON_TAP');
                      logFirebaseEvent('ListTile_navigate_to');

                      context.pushNamed('TermOfService');
                    },
                    child: ListTile(
                      title: Text(
                        '利用規約',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Manrope',
                              letterSpacing: 0.0,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'TEMRS_LIST_PAGE_ListTile_h1tb7cty_ON_TAP');
                      logFirebaseEvent('ListTile_navigate_to');

                      context.pushNamed('SpecifiedCommercialTransactionsLaw');
                    },
                    child: ListTile(
                      title: Text(
                        '特定商取引法に基づく表示',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Manrope',
                              letterSpacing: 0.0,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'TEMRS_LIST_PAGE_ListTile_7mkbbgg3_ON_TAP');
                      logFirebaseEvent('ListTile_navigate_to');

                      context.pushNamed('PrivacyPolicy');
                    },
                    child: ListTile(
                      title: Text(
                        'プライバシーポリシー',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Manrope',
                              letterSpacing: 0.0,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      dense: false,
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
