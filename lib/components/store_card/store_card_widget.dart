import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'store_card_model.dart';
export 'store_card_model.dart';

class StoreCardWidget extends StatefulWidget {
  const StoreCardWidget({
    super.key,
    required this.store,
  });

  final StoreStruct? store;

  @override
  State<StoreCardWidget> createState() => _StoreCardWidgetState();
}

class _StoreCardWidgetState extends State<StoreCardWidget> {
  late StoreCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StoreCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          logFirebaseEvent('STORE_CARD_COMP_card_Actions_ON_TAP');
          logFirebaseEvent('card_Actions_navigate_to');

          context.pushNamed(
            'StoreDetails',
            pathParameters: {
              'storeId': serializeParam(
                widget!.store?.id,
                ParamType.String,
              ),
            }.withoutNulls,
          );
        },
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            maxWidth: 770.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 7.0,
                color: Color(0x2F1D2429),
                offset: Offset(
                  0.0,
                  3.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (widget!.store?.storeImage != null &&
                    (widget!.store?.storeImage)!.isNotEmpty)
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.network(
                      widget!.store!.storeImage.first.path,
                      width: double.infinity,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget!.store?.name,
                          'store name',
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Manrope',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  child: Container(
                    width: double.infinity,
                    height: 24.0,
                    decoration: BoxDecoration(),
                    child: Builder(
                      builder: (context) {
                        final categories =
                            (widget!.store?.category?.toList() ?? [])
                                .take(3)
                                .toList();

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, categoriesIndex) {
                            final categoriesItem = categories[categoriesIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 4.0, 0.0),
                              child: Container(
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 6.0, 8.0, 6.0),
                                    child: Text(
                                      categoriesItem.name,
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: valueOrDefault<String>(
                                widget!.store?.prefecture?.name,
                                'prefecture',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            TextSpan(
                              text: valueOrDefault<String>(
                                widget!.store?.addressLine,
                                'address_line',
                              ),
                              style: TextStyle(),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    letterSpacing: 0.0,
                                  ),
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
    );
  }
}
