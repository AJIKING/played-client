import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'upload_store_model.dart';
export 'upload_store_model.dart';

class UploadStoreWidget extends StatefulWidget {
  const UploadStoreWidget({super.key});

  @override
  State<UploadStoreWidget> createState() => _UploadStoreWidgetState();
}

class _UploadStoreWidgetState extends State<UploadStoreWidget> {
  late UploadStoreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploadStoreModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'UploadStore'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('UPLOAD_STORE_UploadStore_ON_INIT_STATE');
      logFirebaseEvent('UploadStore_backend_call');
      _model.prefectureList =
          await SupabasePostgRESTGroup.prefectureListCall.call();

      logFirebaseEvent('UploadStore_backend_call');
      _model.categoryList =
          await SupabasePostgRESTGroup.categoryListCall.call();
    });

    _model.storeNameTextController ??= TextEditingController();
    _model.storeNameFocusNode ??= FocusNode();

    _model.phoneNumberTextController ??= TextEditingController();
    _model.phoneNumberFocusNode ??= FocusNode();

    _model.addressLineTextController ??= TextEditingController();
    _model.addressLineFocusNode ??= FocusNode();

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
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'ストアの共有',
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Urbanist',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                    child: Text(
                      'お店の情報を共有する',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 18.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 4.0),
                                  child: Text(
                                    '店名',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                                TextFormField(
                                  controller: _model.storeNameTextController,
                                  focusNode: _model.storeNameFocusNode,
                                  autofocus: false,
                                  autofillHints: [AutofillHints.email],
                                  textInputAction: TextInputAction.next,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        lineHeight: 1.0,
                                      ),
                                  minLines: 1,
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  validator: _model
                                      .storeNameTextControllerValidator
                                      .asValidator(context),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 18.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 4.0),
                                  child: Text(
                                    '電話番号 (ハイフンなし)',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                                TextFormField(
                                  controller: _model.phoneNumberTextController,
                                  focusNode: _model.phoneNumberFocusNode,
                                  autofocus: false,
                                  autofillHints: [AutofillHints.email],
                                  textInputAction: TextInputAction.next,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        lineHeight: 1.0,
                                      ),
                                  minLines: 1,
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  validator: _model
                                      .phoneNumberTextControllerValidator
                                      .asValidator(context),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 18.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 4.0),
                                  child: Text(
                                    'カテゴリー',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: FlutterFlowDropDown<String>(
                                    controller:
                                        _model.categoryValueController ??=
                                            FormFieldController<String>(null),
                                    options: FFAppConstants.category,
                                    onChanged: (val) => setState(
                                        () => _model.categoryValue = val),
                                    width: 300.0,
                                    height: 56.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'カテゴリーを選択',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor:
                                        FlutterFlowTheme.of(context).info,
                                    elevation: 2.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 18.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 4.0),
                                  child: Text(
                                    '都道府県',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: FlutterFlowDropDown<String>(
                                    controller:
                                        _model.prefectureValueController ??=
                                            FormFieldController<String>(null),
                                    options: FFAppConstants.prefecture,
                                    onChanged: (val) => setState(
                                        () => _model.prefectureValue = val),
                                    width: 300.0,
                                    height: 56.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: '都道府県を選択',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor:
                                        FlutterFlowTheme.of(context).info,
                                    elevation: 2.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 18.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 4.0),
                                  child: Text(
                                    '市区町村以降',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                                TextFormField(
                                  controller: _model.addressLineTextController,
                                  focusNode: _model.addressLineFocusNode,
                                  autofocus: false,
                                  autofillHints: [AutofillHints.email],
                                  textInputAction: TextInputAction.next,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        lineHeight: 1.0,
                                      ),
                                  maxLines: 4,
                                  minLines: 2,
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  validator: _model
                                      .addressLineTextControllerValidator
                                      .asValidator(context),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 18.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 4.0),
                                  child: Text(
                                    '営業時間',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Text(
                                        '月',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 2.0, 0.0),
                                        child:
                                            FutureBuilder<List<PrefectureRow>>(
                                          future: PrefectureTable().queryRows(
                                            queryFn: (q) => q,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<PrefectureRow>
                                                mondayOpenHourPrefectureRowList =
                                                snapshot.data!;

                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .mondayOpenHourValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options:
                                                  FFAppConstants.businessHour,
                                              onChanged: (val) => setState(() =>
                                                  _model.mondayOpenHourValue =
                                                      val),
                                              width: 300.0,
                                              height: 56.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: '開店時間',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              elevation: 2.0,
                                              borderColor: Colors.transparent,
                                              borderWidth: 0.0,
                                              borderRadius: 8.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.0, 0.0, 0.0, 0.0),
                                        child:
                                            FutureBuilder<List<PrefectureRow>>(
                                          future: PrefectureTable().queryRows(
                                            queryFn: (q) => q,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<PrefectureRow>
                                                mondayCloseHourPrefectureRowList =
                                                snapshot.data!;

                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .mondayCloseHourValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options:
                                                  FFAppConstants.businessHour,
                                              onChanged: (val) => setState(() =>
                                                  _model.mondayCloseHourValue =
                                                      val),
                                              width: 300.0,
                                              height: 56.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: '閉店時間',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              elevation: 2.0,
                                              borderColor: Colors.transparent,
                                              borderWidth: 0.0,
                                              borderRadius: 8.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text(
                                          '火',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 2.0, 0.0),
                                          child: FutureBuilder<
                                              List<PrefectureRow>>(
                                            future: PrefectureTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PrefectureRow>
                                                  thuesdayOpenHourPrefectureRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .thuesdayOpenHourValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    FFAppConstants.businessHour,
                                                onChanged: (val) => setState(() =>
                                                    _model.thuesdayOpenHourValue =
                                                        val),
                                                width: 300.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: '開店時間',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 0.0, 0.0),
                                          child: FutureBuilder<
                                              List<PrefectureRow>>(
                                            future: PrefectureTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PrefectureRow>
                                                  thuesdayCloseHourPrefectureRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .thuesdayCloseHourValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    FFAppConstants.businessHour,
                                                onChanged: (val) => setState(() =>
                                                    _model.thuesdayCloseHourValue =
                                                        val),
                                                width: 300.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: '閉店時間',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 30.0,
                                          icon: Icon(
                                            Icons.content_copy,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 14.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'UPLOAD_STORE_content_copy_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_set_form_field');
                                            setState(() {
                                              _model.thuesdayOpenHourValueController
                                                      ?.value =
                                                  _model.mondayOpenHourValue!;
                                            });
                                            logFirebaseEvent(
                                                'IconButton_set_form_field');
                                            setState(() {
                                              _model.thuesdayCloseHourValueController
                                                      ?.value =
                                                  _model.mondayCloseHourValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text(
                                          '水',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 2.0, 0.0),
                                          child: FutureBuilder<
                                              List<PrefectureRow>>(
                                            future: PrefectureTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PrefectureRow>
                                                  wednesdayOpenHourPrefectureRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .wednesdayOpenHourValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    FFAppConstants.businessHour,
                                                onChanged: (val) => setState(() =>
                                                    _model.wednesdayOpenHourValue =
                                                        val),
                                                width: 300.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: '開店時間',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 0.0, 0.0),
                                          child: FutureBuilder<
                                              List<PrefectureRow>>(
                                            future: PrefectureTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PrefectureRow>
                                                  wednesdayCloseHourPrefectureRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .wednesdayCloseHourValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    FFAppConstants.businessHour,
                                                onChanged: (val) => setState(() =>
                                                    _model.wednesdayCloseHourValue =
                                                        val),
                                                width: 300.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: '閉店時間',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 30.0,
                                          icon: Icon(
                                            Icons.content_copy,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 14.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'UPLOAD_STORE_content_copy_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_set_form_field');
                                            setState(() {
                                              _model.wednesdayOpenHourValueController
                                                      ?.value =
                                                  _model.thuesdayOpenHourValue!;
                                            });
                                            logFirebaseEvent(
                                                'IconButton_set_form_field');
                                            setState(() {
                                              _model.wednesdayCloseHourValueController
                                                      ?.value =
                                                  _model
                                                      .thuesdayCloseHourValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text(
                                          '木',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 2.0, 0.0),
                                          child: FutureBuilder<
                                              List<PrefectureRow>>(
                                            future: PrefectureTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PrefectureRow>
                                                  thuresdayOpenHourPrefectureRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .thuresdayOpenHourValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    FFAppConstants.businessHour,
                                                onChanged: (val) => setState(() =>
                                                    _model.thuresdayOpenHourValue =
                                                        val),
                                                width: 300.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: '開店時間',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 0.0, 0.0),
                                          child: FutureBuilder<
                                              List<PrefectureRow>>(
                                            future: PrefectureTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PrefectureRow>
                                                  thuresdayCloseHourPrefectureRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .thuresdayCloseHourValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    FFAppConstants.businessHour,
                                                onChanged: (val) => setState(() =>
                                                    _model.thuresdayCloseHourValue =
                                                        val),
                                                width: 300.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: '閉店時間',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 30.0,
                                          icon: Icon(
                                            Icons.content_copy,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 14.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'UPLOAD_STORE_content_copy_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_set_form_field');
                                            setState(() {
                                              _model.thuresdayOpenHourValueController
                                                      ?.value =
                                                  _model
                                                      .wednesdayOpenHourValue!;
                                            });
                                            logFirebaseEvent(
                                                'IconButton_set_form_field');
                                            setState(() {
                                              _model.thuresdayCloseHourValueController
                                                      ?.value =
                                                  _model
                                                      .wednesdayCloseHourValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text(
                                          '金',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 2.0, 0.0),
                                          child: FutureBuilder<
                                              List<PrefectureRow>>(
                                            future: PrefectureTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PrefectureRow>
                                                  fridayOpenHourPrefectureRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .fridayOpenHourValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    FFAppConstants.businessHour,
                                                onChanged: (val) => setState(() =>
                                                    _model.fridayOpenHourValue =
                                                        val),
                                                width: 300.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: '開店時間',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 0.0, 0.0),
                                          child: FutureBuilder<
                                              List<PrefectureRow>>(
                                            future: PrefectureTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PrefectureRow>
                                                  fridayCloseHourPrefectureRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .fridayCloseHourValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    FFAppConstants.businessHour,
                                                onChanged: (val) => setState(() =>
                                                    _model.fridayCloseHourValue =
                                                        val),
                                                width: 300.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: '閉店時間',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 30.0,
                                          icon: Icon(
                                            Icons.content_copy,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 14.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'UPLOAD_STORE_content_copy_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_set_form_field');
                                            setState(() {
                                              _model.fridayOpenHourValueController
                                                      ?.value =
                                                  _model
                                                      .thuresdayOpenHourValue!;
                                            });
                                            logFirebaseEvent(
                                                'IconButton_set_form_field');
                                            setState(() {
                                              _model.fridayCloseHourValueController
                                                      ?.value =
                                                  _model
                                                      .thuresdayCloseHourValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text(
                                          '土',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 2.0, 0.0),
                                          child: FutureBuilder<
                                              List<PrefectureRow>>(
                                            future: PrefectureTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PrefectureRow>
                                                  saturdayOpenHourPrefectureRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .saturdayOpenHourValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    FFAppConstants.businessHour,
                                                onChanged: (val) => setState(() =>
                                                    _model.saturdayOpenHourValue =
                                                        val),
                                                width: 300.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: '開店時間',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 0.0, 0.0),
                                          child: FutureBuilder<
                                              List<PrefectureRow>>(
                                            future: PrefectureTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PrefectureRow>
                                                  saturdayCloseHourPrefectureRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .saturdayCloseHourValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    FFAppConstants.businessHour,
                                                onChanged: (val) => setState(() =>
                                                    _model.saturdayCloseHourValue =
                                                        val),
                                                width: 300.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: '閉店時間',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 30.0,
                                          icon: Icon(
                                            Icons.content_copy,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 14.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'UPLOAD_STORE_content_copy_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_set_form_field');
                                            setState(() {
                                              _model.saturdayOpenHourValueController
                                                      ?.value =
                                                  _model.fridayOpenHourValue!;
                                            });
                                            logFirebaseEvent(
                                                'IconButton_set_form_field');
                                            setState(() {
                                              _model.saturdayCloseHourValueController
                                                      ?.value =
                                                  _model.fridayCloseHourValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text(
                                          '日',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 2.0, 0.0),
                                          child: FutureBuilder<
                                              List<PrefectureRow>>(
                                            future: PrefectureTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PrefectureRow>
                                                  sundayOpenHourPrefectureRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .sundayOpenHourValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    FFAppConstants.businessHour,
                                                onChanged: (val) => setState(() =>
                                                    _model.sundayOpenHourValue =
                                                        val),
                                                width: 300.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: '開店時間',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 0.0, 0.0),
                                          child: FutureBuilder<
                                              List<PrefectureRow>>(
                                            future: PrefectureTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PrefectureRow>
                                                  sundayCloseHourPrefectureRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .sundayCloseHourValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    FFAppConstants.businessHour,
                                                onChanged: (val) => setState(() =>
                                                    _model.sundayCloseHourValue =
                                                        val),
                                                width: 300.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: '閉店時間',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 30.0,
                                          icon: Icon(
                                            Icons.content_copy,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 14.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'UPLOAD_STORE_content_copy_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_set_form_field');
                                            setState(() {
                                              _model.sundayOpenHourValueController
                                                      ?.value =
                                                  _model.saturdayOpenHourValue!;
                                            });
                                            logFirebaseEvent(
                                                'IconButton_set_form_field');
                                            setState(() {
                                              _model.sundayCloseHourValueController
                                                      ?.value =
                                                  _model
                                                      .saturdayCloseHourValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 24.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'UPLOAD_STORE_PAGE_共有する_BTN_ON_TAP');
                                logFirebaseEvent('Button_validate_form');
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                if (_model.categoryValue == null) {
                                  return;
                                }
                                if (_model.prefectureValue == null) {
                                  return;
                                }
                                logFirebaseEvent('Button_custom_action');
                                _model.prefectureId =
                                    await actions.getPrefectureId(
                                  ((_model.prefectureList?.jsonBody ?? '')
                                              .toList()
                                              .map<PrefecturesStruct?>(
                                                  PrefecturesStruct.maybeFromMap)
                                              .toList()
                                          as Iterable<PrefecturesStruct?>)
                                      .withoutNulls
                                      .toList(),
                                  _model.prefectureValue!,
                                );
                                logFirebaseEvent('Button_custom_action');
                                _model.categoryId = await actions.getCategoryId(
                                  ((_model.categoryList?.jsonBody ?? '')
                                              .toList()
                                              .map<CategoriesStruct?>(
                                                  CategoriesStruct.maybeFromMap)
                                              .toList()
                                          as Iterable<CategoriesStruct?>)
                                      .withoutNulls
                                      .toList(),
                                  _model.categoryValue!,
                                );
                                logFirebaseEvent('Button_custom_action');
                                _model.storeId = await actions.generateUuid();
                                logFirebaseEvent('Button_backend_call');
                                await StoreTable().insert({
                                  'name': _model.storeNameTextController.text,
                                  'address_line':
                                      _model.addressLineTextController.text,
                                  'prefecture': _model.prefectureId,
                                  'id': _model.storeId,
                                  'phone_number':
                                      _model.phoneNumberTextController.text,
                                  'created_user_id': currentUserUid,
                                });
                                logFirebaseEvent('Button_backend_call');
                                await StoreCategoryTable().insert({
                                  'store_id': _model.storeId,
                                  'category_id': _model.categoryId,
                                });
                                if ((_model.mondayOpenHourValue != null &&
                                        _model.mondayOpenHourValue != '') &&
                                    (_model.mondayCloseHourValue != null &&
                                        _model.mondayCloseHourValue != '')) {
                                  logFirebaseEvent('Button_custom_action');
                                  _model.monOpenHour =
                                      await actions.parseFromStringToDatetime(
                                    _model.mondayOpenHourValue!,
                                  );
                                  logFirebaseEvent('Button_custom_action');
                                  _model.monCloseHour =
                                      await actions.parseFromStringToDatetime(
                                    _model.mondayCloseHourValue!,
                                  );
                                  logFirebaseEvent('Button_backend_call');
                                  await StoreBusinessHourTable().insert({
                                    'open_time': supaSerialize<PostgresTime>(
                                        PostgresTime(_model.monOpenHour)),
                                    'close_time': supaSerialize<PostgresTime>(
                                        PostgresTime(_model.monCloseHour)),
                                    'store_id': _model.storeId,
                                    'code': FFAppConstants.monday,
                                  });
                                }
                                if ((_model.thuesdayOpenHourValue != null &&
                                        _model.thuesdayOpenHourValue != '') &&
                                    (_model.thuesdayCloseHourValue != null &&
                                        _model.thuesdayCloseHourValue != '')) {
                                  logFirebaseEvent('Button_custom_action');
                                  _model.thueOpenHour =
                                      await actions.parseFromStringToDatetime(
                                    _model.thuesdayOpenHourValue!,
                                  );
                                  logFirebaseEvent('Button_custom_action');
                                  _model.thueCloseHour =
                                      await actions.parseFromStringToDatetime(
                                    _model.thuesdayCloseHourValue!,
                                  );
                                  logFirebaseEvent('Button_backend_call');
                                  await StoreBusinessHourTable().insert({
                                    'open_time': supaSerialize<PostgresTime>(
                                        PostgresTime(_model.thueOpenHour)),
                                    'close_time': supaSerialize<PostgresTime>(
                                        PostgresTime(_model.thueCloseHour)),
                                    'store_id': _model.storeId,
                                    'code': FFAppConstants.thuesday,
                                  });
                                }
                                if ((_model.wednesdayOpenHourValue != null &&
                                        _model.wednesdayOpenHourValue != '') &&
                                    (_model.wednesdayCloseHourValue != null &&
                                        _model.wednesdayCloseHourValue != '')) {
                                  logFirebaseEvent('Button_custom_action');
                                  _model.wedOpenHour =
                                      await actions.parseFromStringToDatetime(
                                    _model.wednesdayOpenHourValue!,
                                  );
                                  logFirebaseEvent('Button_custom_action');
                                  _model.wedCloseHour =
                                      await actions.parseFromStringToDatetime(
                                    _model.wednesdayCloseHourValue!,
                                  );
                                  logFirebaseEvent('Button_backend_call');
                                  await StoreBusinessHourTable().insert({
                                    'open_time': supaSerialize<PostgresTime>(
                                        PostgresTime(_model.wedOpenHour)),
                                    'close_time': supaSerialize<PostgresTime>(
                                        PostgresTime(_model.wedCloseHour)),
                                    'store_id': _model.storeId,
                                    'code': FFAppConstants.wednesday,
                                  });
                                }
                                if ((_model.thuresdayOpenHourValue != null &&
                                        _model.thuresdayOpenHourValue != '') &&
                                    (_model.thuresdayCloseHourValue != null &&
                                        _model.thuresdayCloseHourValue != '')) {
                                  logFirebaseEvent('Button_custom_action');
                                  _model.thurOpenHour =
                                      await actions.parseFromStringToDatetime(
                                    _model.thuresdayOpenHourValue!,
                                  );
                                  logFirebaseEvent('Button_custom_action');
                                  _model.thurCloseHour =
                                      await actions.parseFromStringToDatetime(
                                    _model.thuresdayCloseHourValue!,
                                  );
                                  logFirebaseEvent('Button_backend_call');
                                  await StoreBusinessHourTable().insert({
                                    'open_time': supaSerialize<PostgresTime>(
                                        PostgresTime(_model.thurOpenHour)),
                                    'close_time': supaSerialize<PostgresTime>(
                                        PostgresTime(_model.thurCloseHour)),
                                    'store_id': _model.storeId,
                                    'code': FFAppConstants.thursday,
                                  });
                                }
                                if ((_model.fridayOpenHourValue != null &&
                                        _model.fridayOpenHourValue != '') &&
                                    (_model.fridayCloseHourValue != null &&
                                        _model.fridayCloseHourValue != '')) {
                                  logFirebaseEvent('Button_custom_action');
                                  _model.friOpenHour =
                                      await actions.parseFromStringToDatetime(
                                    _model.fridayOpenHourValue!,
                                  );
                                  logFirebaseEvent('Button_custom_action');
                                  _model.friCloseHour =
                                      await actions.parseFromStringToDatetime(
                                    _model.fridayCloseHourValue!,
                                  );
                                  logFirebaseEvent('Button_backend_call');
                                  await StoreBusinessHourTable().insert({
                                    'open_time': supaSerialize<PostgresTime>(
                                        PostgresTime(_model.friOpenHour)),
                                    'close_time': supaSerialize<PostgresTime>(
                                        PostgresTime(_model.friCloseHour)),
                                    'store_id': _model.storeId,
                                    'code': FFAppConstants.friday,
                                  });
                                }
                                if ((_model.saturdayOpenHourValue != null &&
                                        _model.saturdayOpenHourValue != '') &&
                                    (_model.fridayCloseHourValue != null &&
                                        _model.fridayCloseHourValue != '')) {
                                  logFirebaseEvent('Button_custom_action');
                                  _model.satOpenHour =
                                      await actions.parseFromStringToDatetime(
                                    _model.saturdayOpenHourValue!,
                                  );
                                  logFirebaseEvent('Button_custom_action');
                                  _model.satCloseHour =
                                      await actions.parseFromStringToDatetime(
                                    _model.saturdayCloseHourValue!,
                                  );
                                  logFirebaseEvent('Button_backend_call');
                                  await StoreBusinessHourTable().insert({
                                    'open_time': supaSerialize<PostgresTime>(
                                        PostgresTime(_model.satOpenHour)),
                                    'close_time': supaSerialize<PostgresTime>(
                                        PostgresTime(_model.satCloseHour)),
                                    'store_id': _model.storeId,
                                    'code': FFAppConstants.saturday,
                                  });
                                }
                                if ((_model.thuesdayOpenHourValue != null &&
                                        _model.thuesdayOpenHourValue != '') &&
                                    (_model.thuesdayCloseHourValue != null &&
                                        _model.thuesdayCloseHourValue != '')) {
                                  logFirebaseEvent('Button_custom_action');
                                  _model.sunOpenHour =
                                      await actions.parseFromStringToDatetime(
                                    _model.sundayOpenHourValue!,
                                  );
                                  logFirebaseEvent('Button_custom_action');
                                  _model.sunCloseHour =
                                      await actions.parseFromStringToDatetime(
                                    _model.sundayCloseHourValue!,
                                  );
                                  logFirebaseEvent('Button_backend_call');
                                  await StoreBusinessHourTable().insert({
                                    'open_time': supaSerialize<PostgresTime>(
                                        PostgresTime(_model.sunOpenHour)),
                                    'close_time': supaSerialize<PostgresTime>(
                                        PostgresTime(_model.sunCloseHour)),
                                    'store_id': _model.storeId,
                                    'code': FFAppConstants.sunday,
                                  });
                                }
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed('Dashboard');

                                setState(() {});
                              },
                              text: '共有する',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: Colors.white,
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
      ),
    );
  }
}
