import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/store_card/store_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_uploaed_store_model.dart';
export 'my_uploaed_store_model.dart';

class MyUploaedStoreWidget extends StatefulWidget {
  const MyUploaedStoreWidget({super.key});

  @override
  State<MyUploaedStoreWidget> createState() => _MyUploaedStoreWidgetState();
}

class _MyUploaedStoreWidgetState extends State<MyUploaedStoreWidget> {
  late MyUploaedStoreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyUploaedStoreModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'MyUploaedStore'});
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
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(),
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
                                'MY_UPLOAED_STORE_arrow_back_rounded_ICN_');
                            logFirebaseEvent('IconButton_navigate_back');
                            context.pop();
                          },
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'MY_UPLOAED_STORE_RichText_4q08szj5_ON_TA');
                            logFirebaseEvent('RichText_navigate_to');

                            context.pushNamed('Dashboard');
                          },
                          child: RichText(
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
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: SupabasePostgRESTGroup.storeListCall.call(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        final columnStoreListResponse = snapshot.data!;

                        return Builder(
                          builder: (context) {
                            final store = (columnStoreListResponse.jsonBody
                                        .toList()
                                        .map<StoreStruct?>(
                                            StoreStruct.maybeFromMap)
                                        .toList() as Iterable<StoreStruct?>)
                                    .withoutNulls
                                    ?.toList() ??
                                [];

                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children:
                                  List.generate(store.length, (storeIndex) {
                                final storeItem = store[storeIndex];
                                return wrapWithModel(
                                  model: _model.storeCardModels.getModel(
                                    storeItem.id,
                                    storeIndex,
                                  ),
                                  updateCallback: () => setState(() {}),
                                  child: StoreCardWidget(
                                    key: Key(
                                      'Keyuol_${storeItem.id}',
                                    ),
                                    store: storeItem,
                                  ),
                                );
                              }),
                            );
                          },
                        );
                      },
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
