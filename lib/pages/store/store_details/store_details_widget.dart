import '/backend/api_requests/api_calls.dart';
import '/components/store_detail/store_detail_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'store_details_model.dart';
export 'store_details_model.dart';

class StoreDetailsWidget extends StatefulWidget {
  const StoreDetailsWidget({
    super.key,
    required this.storeId,
  });

  final String? storeId;

  @override
  State<StoreDetailsWidget> createState() => _StoreDetailsWidgetState();
}

class _StoreDetailsWidgetState extends State<StoreDetailsWidget> {
  late StoreDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StoreDetailsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'StoreDetails'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: SupabasePostgRESTGroup.storeDetailCall.call(
        storeId: widget!.storeId,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final storeDetailsStoreDetailResponse = snapshot.data!;

        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
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
                  logFirebaseEvent('STORE_DETAILS_arrow_back_rounded_ICN_ON_');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: wrapWithModel(
              model: _model.storeDetailModel,
              updateCallback: () => setState(() {}),
              child: StoreDetailWidget(
                store: (storeDetailsStoreDetailResponse.jsonBody
                        .toList()
                        .map<StoreStruct?>(StoreStruct.maybeFromMap)
                        .toList() as Iterable<StoreStruct?>)
                    .withoutNulls
                    .first,
              ),
            ),
          ),
        );
      },
    );
  }
}
