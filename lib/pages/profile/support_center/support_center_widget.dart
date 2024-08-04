import '/components/accordion_widget.dart';
import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'support_center_model.dart';
export 'support_center_model.dart';

class SupportCenterWidget extends StatefulWidget {
  const SupportCenterWidget({super.key});

  @override
  State<SupportCenterWidget> createState() => _SupportCenterWidgetState();
}

class _SupportCenterWidgetState extends State<SupportCenterWidget> {
  late SupportCenterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SupportCenterModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'SupportCenter'});
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
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.customAppbarModel,
                      updateCallback: () => setState(() {}),
                      child: CustomAppbarWidget(
                        backButton: true,
                        actionButton: false,
                        actionButtonAction: () async {},
                        optionsButtonAction: () async {},
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Text(
                        'よくある質問',
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Urbanist',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.accordionModel1,
                            updateCallback: () => setState(() {}),
                            child: AccordionWidget(
                              question: 'アプリはどのようなサービスを提供していますか？',
                              answer:
                                  'アプリは雀荘、ダーツバー、将棋クラブなどのアミューズメント系のお店の一覧を提供し、店舗情報やレビュー、評価を確認することができます。',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.accordionModel2,
                            updateCallback: () => setState(() {}),
                            child: AccordionWidget(
                              question: 'アプリの利用は無料ですか？',
                              answer: 'はい、アプリの基本機能は無料で利用できます。',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.accordionModel3,
                            updateCallback: () => setState(() {}),
                            child: AccordionWidget(
                              question: 'このアプリを使うためにアカウント登録は必要ですか？',
                              answer:
                                  'アカウント登録は必須ではありませんが、登録することでお店を共有するなどの機能を利用することができます。',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.accordionModel4,
                            updateCallback: () => setState(() {}),
                            child: AccordionWidget(
                              question: '店舗の情報はどのようにして取得されていますか？',
                              answer:
                                  '店舗の情報は、ユーザーからの投稿や公式ウェブサイトからの情報収集に基づいています。',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.accordionModel5,
                            updateCallback: () => setState(() {}),
                            child: AccordionWidget(
                              question: '店舗の情報が古い場合、どうすればいいですか？',
                              answer: '問い合わせから店舗情報の更新をリクエストしてくださ。内容を確認して更新します。',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.accordionModel6,
                            updateCallback: () => setState(() {}),
                            child: AccordionWidget(
                              question: '店舗のレビューは誰でも投稿できますか？',
                              answer: 'はい、アカウントを持っているユーザーであれば誰でもレビューを投稿できます。',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.accordionModel7,
                            updateCallback: () => setState(() {}),
                            child: AccordionWidget(
                              question: '不適切なレビューがあった場合、どう対処すればいいですか？',
                              answer:
                                  '不適切なレビューは、問い合わせから該当のレビューを報告してください。運営チームが内容を確認して対応します。',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.accordionModel8,
                            updateCallback: () => setState(() {}),
                            child: AccordionWidget(
                              question: 'アプリに関する問題や改善提案はどこに連絡すればいいですか？',
                              answer: 'アプリ内のサポートセクションからお問い合わせをご利用ください。',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.accordionModel9,
                            updateCallback: () => setState(() {}),
                            child: AccordionWidget(
                              question: 'ログインメールが届かない',
                              answer:
                                  'キャリアメールなどを利用している場合には届かないことがあります。また、迷惑メールボックスもご確認ください。',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.accordionModel10,
                            updateCallback: () => setState(() {}),
                            child: AccordionWidget(
                              question: 'パスワードを忘れてしまいました。どうすればいいですか？',
                              answer:
                                  'アプリのログイン画面から「パスワードを忘れた場合」を選択し、指示に従ってパスワードをリセットしてください。',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
