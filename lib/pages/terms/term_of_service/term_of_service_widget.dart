import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'term_of_service_model.dart';
export 'term_of_service_model.dart';

class TermOfServiceWidget extends StatefulWidget {
  const TermOfServiceWidget({super.key});

  @override
  State<TermOfServiceWidget> createState() => _TermOfServiceWidgetState();
}

class _TermOfServiceWidgetState extends State<TermOfServiceWidget> {
  late TermOfServiceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermOfServiceModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'TermOfService'});
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
          child: Padding(
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Text(
                      '利用規約',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      'この利用規約（以下、「本規約」といいます。）は、株式会社PLARIA（以下、「当社」といいます。）がウェブサイト上及びアプリケーション等で提供するサービス（以下「本サービス」といいます。）の利用条件を定めるものです。各種サービスの利用に際し、利用者（以下「ユーザー」といいます。）は、本規約の内容を十分にご確認いただき、同意いただいた上で、ご利用ください。\n',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第1条（本規約への同意、適用範囲）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '1.本規約は、ユーザーと当社との間の本サービスの利用に関わる一切の関係に適用されるものとします。\n2.当社は本サービスに関し、本規約のほか、ご利用にあたってのルール等、各種の定め（以下、「個別規定」といいます。）をすることがあります。\n3.これら個別規定はその名称のいかんに関わらず、本規約の一部を構成するものとします。\n4.本規約の規定が前条の個別規定の規定と矛盾する場合には、個別規定において特段の定めなき限り、個別規定の規定が優先されるものとします。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第2条（利用方法）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '本サービスの利用は、本規約及び当社が定める各諸規定の順守に同意いただき、会員登録の手続き後、利用することができます。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第3条（ユーザーIDおよびパスワードの管理）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '1.ユーザーは、自己の責任において、本サービスのユーザーIDおよびパスワードを適切に管理するものとします。\n2.ユーザーは、いかなる場合にも、ユーザーIDおよびパスワードを第三者に譲渡または貸与し、もしくは第三者と共用することはできません。\n3.当社は、ユーザーIDとパスワードの組み合わせが登録情報と一致してログインされた場合には、そのユーザーIDを登録しているユーザー自身による利用とみなします。\n4.ユーザーID及びパスワードが第三者によって使用されたことによって生じた損害は、当社に故意又は重大な過失がある場合を除き、当社は一切の責任を負わないものとします。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第4条（禁止事項）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      'ユーザーは、本サービスの利用にあたり、以下の行為をしてはなりません。\n\n1.法令または公序良俗に違反する行為 犯罪行為に関連する行為\n2.本サービスの内容等、本サービスに含まれる著作権、商標権ほか知的財産権を侵害する行為\n3.当社、ほかのユーザー、またはその他第三者のサーバーまたはネットワークの機能を破壊したり、妨害したりする行為\n4.本サービスによって得られた情報を商業的に利用する行為\n5.当社のサービスの運営を妨害するおそれのある行為\n6.不正アクセスをし、またはこれを試みる行為\n7.他のユーザーに関する個人情報等を収集または蓄積する行為\n8.不正な目的を持って本サービスを利用する行為\n9.本サービスの他のユーザーまたはその他の第三者に不利益、損害、不快感を与える行為\n10.他のユーザーに成りすます行為\n11.当社が許諾しない本サービス上での宣伝、広告、勧誘、または営業行為\n12.面識のない異性との出会いを目的とした行為\n13.当社のサービスに関連して、反社会的勢力に対して直接または間接に利益を供与する行為\n14.その他、当社が不適切と判断する行為',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第5条（著作権等）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '当社のウェブサイトに掲載されている全てのコンテンツに関する著作権その他の知的財産権は、当社または個々の権利者が権利を有しています。 利用者は、当社または個々の権利者の書面による許可なく、または法令で許容された範囲を超えて利用してはなりません。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第6条（認証情報の管理）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '利用者は、本サービスのアカウントの作成にあたって登録するメールアドレスおよび認証情報を自己の責任において適切に管理および保管するものとします。 利用者が本サービスのアカウントに登録したメールアドレスへのアクセスができなくなった場合、本サービスへのログインができなくなることがあります。\n\n利用者が本サービスのアカウント登録にあたって認証情報として利用する、運営会社以外の者が運営するサービス（以下「外部サービス」といいます）の登録および利用については、当該外部サービスが規定する各規約の定めに従い、利用者自身の責任で行うものとします。 認証情報の管理不十分、第三者の使用等によって生じた損害または不利益については利用者が責任を負うものとし、運営会社は一切の責任を負いません。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第7条（有料機能および決済）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '本サービスでは有料プランを提供しており、1ヶ月単位で所定の利用料金を支払うことにより、有料プラン限定の機能を利用できるものとします。 有料プランの利用者は、期間満了日の前日までに有料プランを解約もしくはアカウントを削除しない限り、自動的に同一プランが1ヶ月間延長され、期間満了日の翌日から所定の料金の支払義務が発生するものとします。\nプランの延長手続きにおいて利用料金の支払いが失敗した場合、運営会社は直ちに有料プランの提供を停止できるものとします。有料プランの提供停止により利用者に生じた損害について、運営会社は一切の責任を負いません。 利用者が月の途中に有料プランの解約した場合、またはアカウントが削除・停止された場合であっても、支払い済みの料金は返金されないものとします。\n\n有料プランは、運営会社の指定する決済手段を有し、本利用規約を遵守できる方のみ利用できるものとします。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第8条（広告の掲載）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '運営会社は、第三者の広告を本サービス上に掲載することができるものとします。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第9条（退会）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '利用者は所定の方法に従って手続きを行うことにより、いつでもアカウントを削除することができます。\nアカウントの削除後は、過去に本サービスに投稿されたコンテンツおよびアカウントに紐づくデータ（購入履歴や領収書等を含む）にアクセスすることはできなくなります。有料プランに加入している場合も、支払い済みの利用料金の返金は行われません。 アカウントの削除に伴い利用者に生じる損失または不利益について、運営会社は責任を負わないものとします。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第10条（サービス内容の変更・停止）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '運営会社は、利用者に通知することなく、本サービスの内容の変更および一部機能の停止をすることができるものとし、これによって利用者に生じた損害または不利益について一切の責任を負いません。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第11条（免責事項）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '運営会社は、本サービスに事実上または法律上の瑕疵（安全性、信頼性、正確性、完全性、有効性、特定の目的への適合性、セキュリティなどに関する欠陥、エラーやバグ、権利侵害などを含みます）がないことを明示的にも黙示的にも保証しておりません。\n運営会社は、本サービスの利用により生じたあらゆる損害や不利益について一切の責任を負わないものとします。ただし、運営会社と利用者との契約が消費者契約法に定める消費者契約にあたる場合、この免責規定は適用されません。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第12条（利用規約の変更）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '運営会社は、利用者に通知または本ウェブサイト上で告知することにより、本サービスの本利用規約を変更することができます。\n運営会社は、本規約および本サービスの内容の変更により生じたいかなる損害や不利益について責任を負いません。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第13条（統計データ、属性情報等の取り扱い）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '当社は、利用者の登録・抹消の前後を問わず、本サービス上で利用者が登録した利用者の個人情報、本サービスの利用履歴（ページビュー、応募履歴、投資履歴等を含みますが、これらに限られません。）を、個人を識別・特定できないように加工（加工して得られる個人に関する情報を「匿名加工情報」といいます。）した後、集計および分析した統計データ、属性情報等を作成し、これらを何らの制限なく利用することができるものとし、利用者はこれをあらかじめ承諾します。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第14条（損害賠償）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '利用者が、本規約に違反し、または本サービスの利用に際し、当社もしくは第三者に対して損害を与えた場合、利用者は直接・間接を問わず、一切の損害を賠償するものとします。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第15条（権利義務の譲渡の禁止）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      'ユーザーは、当社の書面による事前の承諾なく、利用契約上の地位または本規約に基づく権利もしくは義務を第三者に譲渡し、または担保に供することはできません。\n当社は本サービスにかかる事業を他社に譲渡した場合には、当該事業譲渡に伴いサービス利用契約上の地位、本規約に基づく権利及び義務並びにユーザーの登録事項その他の顧客情報を当該事業譲渡の譲受人に譲渡することができるものとし、ユーザーはかかる譲渡につき本項において予め同意したものとします。なお、本項に定める事業譲渡には、通常の事業譲渡のみならず、会社分割その他事業が移転するあらゆる場合を含むものとします。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第16条（分離可能性）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '本規約のいずれかの条項またはその一部が、消費者契約法その他の法令等により無効または執行不能と判断された場合であっても、本規約の残りの規定及び一部が無効または執行不能と判断された規定の残り部分は、継続して完全に効力を有するものとします。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '第17条（準拠法・裁判管轄）',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                    child: Text(
                      '本規約の解釈にあたっては、日本法を準拠法とします。 本サービスに関して紛争が生じた場合には、当社の本店所在地を管轄する裁判所を専属的合意管轄とします。',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                      child: Text(
                        '令和6年8月1日制定',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
        ),
      ),
    );
  }
}
