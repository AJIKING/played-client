import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/store_card/store_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Dashboard'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('DASHBOARD_PAGE_Dashboard_ON_INIT_STATE');
      logFirebaseEvent('Dashboard_haptic_feedback');
      HapticFeedback.mediumImpact();
    });

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
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'DASHBOARD_PAGE_RichText_czsu1oex_ON_TAP');
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
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
                                        'Keyfnw_${storeItem.id}',
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
      ),
    );
  }
}
