import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/store_card/store_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'my_uploaed_store_widget.dart' show MyUploaedStoreWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyUploaedStoreModel extends FlutterFlowModel<MyUploaedStoreWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for storeCard dynamic component.
  late FlutterFlowDynamicModels<StoreCardModel> storeCardModels;

  @override
  void initState(BuildContext context) {
    storeCardModels = FlutterFlowDynamicModels(() => StoreCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    storeCardModels.dispose();
  }
}
