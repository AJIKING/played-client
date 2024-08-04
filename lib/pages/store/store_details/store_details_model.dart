import '/backend/api_requests/api_calls.dart';
import '/components/store_detail/store_detail_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'store_details_widget.dart' show StoreDetailsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StoreDetailsModel extends FlutterFlowModel<StoreDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for storeDetail component.
  late StoreDetailModel storeDetailModel;

  @override
  void initState(BuildContext context) {
    storeDetailModel = createModel(context, () => StoreDetailModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    storeDetailModel.dispose();
  }
}
