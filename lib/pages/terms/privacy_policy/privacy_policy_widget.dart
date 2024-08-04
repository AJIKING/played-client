import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

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

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PrivacyPolicy'});
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.customAppbarModel,
                          updateCallback: () => setState(() {}),
                          child: CustomAppbarWidget(
                            backButton: true,
                            actionButton: false,
                            optionsButton: false,
                            actionButtonAction: () async {},
                            optionsButtonAction: () async {},
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Text(
                            'プライバシーポリシー',
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Urbanist',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Divider(
                          height: 32.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '本サービスは、以下のプライバシーポリシーを定め、個人情報の保護に関する法律（以下「個人情報保護法」といいます）を遵守すると共に、適切なプライバシー情報の保護に努めます。',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '第1条（プライバシー情報の定義）',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            'プライバシー情報とは、個人情報、履歴情報および特性情報を指します。\n\nプライバシー情報のうち「個人情報」は、個人情報保護法で規定された「個人情報」を指すものとし、生存する個人に関する情報のうち、氏名、連絡先その他の記述等により特定の個人を識別できる情報を指します。\n\nプライバシー情報のうち「履歴情報および特性情報」とは、上記に定める「個人情報」以外のものを指し、ご利用いただいたサービスやご覧になったページ、広告の履歴、IPアドレス、Cookie、端末の個体識別情報など、利用者がサービスを利用する際の履歴に関する情報や、利用者の有する特性に関する情報を指します。',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '第2条（プライバシー情報の収集方法）',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '1.本サービスは、アカウントの有効性の確認やアカウントの保護のため、利用者が利用登録をする際にメールアドレスなどのプライバシー情報をお尋ねします。また、利用者と本サービスの提携先（情報提供元、広告主、広告配信先などを含みます）などとの間でなされた利用者のプライバシー情報を含む取引記録や、決済に関する情報を本サービスの提携先などから収集することがあります。\n\n2.本サービスは、利便性の向上のため、利用者について、閲覧したページや広告の履歴、検索した検索キーワード、利用日時、利用方法、利用環境（携帯端末を通じてご利用の場合の当該端末の通信状態、利用に際しての各種設定情報なども含みます）、IPアドレス、Cookie、ローカルストレージなどの履歴情報および特性情報を、利用者が本サービスや提携先のサービスを利用し、またはページを閲覧する際に収集します。',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '第3条（プライバシー情報の収集目的）',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '本サービスは、以下の目的のため利用者のプライバシー情報を収集します。\n1.利用者のアカウントの有効性を確認し、不正利用を防ぐ目的\n2.利用者にメールアドレスなどの登録情報や利用されたサービスなどに関する情報を表示する目的\n3.利用者にお知らせや連絡をする目的\n4.利用者からのお問い合わせに対応する目的\n5.本サービスのサービス向上のための調査、分析をする目的\n5.その他、前各号に付随する目的',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '第4条（プライバシー情報の安全管理）',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '運営会社は、個人情報の正確性および安全性を確保するために、セキュリティ対策をはじめとする安全対策を実施し、個人情報の漏えい、滅失またはき損の防止および是正に努めます。',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '第5条（プライバシー情報の第三者提供）',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '運営会社は、次に掲げる場合を除いて、予め利用者の同意を得ることなく、第三者に個人情報を提供することはありません。\n\n1.個人情報保護法その他の法令で認められる場合\n2.人の生命、身体または財産の保護のために必要がある場合であって、本人の同意を得ることが困難である場合\n3.公衆衛生の向上又は児童の健全な育成の推進のために特に必要がある場合であって、本人の同意を得ることが困難である場合\n4.国の機関もしくは地方公共団体またはその委託を受けた者が法令の定める事務を遂行することに対して協力する必要がある場合であって、本人の同意を得ることにより当該事務の遂行に支障を及ぼすおそれがある場合\n5.予め提供先および提供されるデータの内容を公表をしている場合\n\n前項の定めにかかわらず、次に掲げる場合は第三者提供には該当しないものとします。\n\n`1.運営会社が利用目的の達成に必要な範囲内において個人情報の取扱いの全部または一部を委託する場合\n2.合併その他の事由による事業の承継に伴って個人情報が提供される場合\n',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            'プライバシー情報の第三者提供先',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '1.本サービスでは、コンテンツの決済をStripeに委託しています。クレジットカードおよびその他決済情報の取り扱いに関してはStripeのプライバシーポリシーが適用されます。\n2.本サービスでは、ページ毎のアクセス回数や滞在時間、利用環境や地域毎の利用状況を把握するために、Google Analyticsを利用しています。Google AnalyticsにはCookieなどデバイスに記録されている識別子や、IPアドレス、閲覧したサイトのURLやアプリの画面名等の情報が送信されます。Google Analyticsに関する詳しい説明はGoogle Analyticsポリシーをご覧ください。Google AnalyticsによるCookieの利用を停止するにはGoogle Analyticsオプトアウトアドオンをご利用ください。 第\n',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '第6条（プライバシー情報の開示）',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '運営会社は、個人情報保護法に基づき利用者から個人情報の開示を求められたときには、本人確認をしたうえで利用者に対して開示を行います（当該個人情報が存在しない時はその旨を通知します）。ただし、個人情報保護法その他の法令により、運営会社が開示の義務を負わない場合はこの限りではありません。個人情報の開示請求に対しては、1件あたり3,000円の事務手数料を申し受けます。',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '第7条（プライバシー情報の訂正および削除）',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '利用者は、運営会社の保有する自己の個人情報が誤った情報である場合には、運営会社が定める手続きにより、運営会社に対して個人情報の訂正または削除を請求することができます。運営会社は、利用者から前項の請求を受けてその請求に応じる必要があると判断した場合には、遅滞なく、当該個人情報の訂正または削除を行い、これを利用者に通知します。',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '第8条（プライバシーポリシーの変更）',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 12.0),
                          child: Text(
                            '運営会社は、利用者に通知または本ウェブサイト上で告知することで、本ポリシーを変更することができるものとします。',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 12.0),
                            child: Text(
                              '令和6年8月1日制定',
                              textAlign: TextAlign.end,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
