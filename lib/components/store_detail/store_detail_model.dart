import '/auth/base_auth_user_provider.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/comment_form_dialog/comment_form_dialog_widget.dart';
import '/components/review/review_widget.dart';
import '/components/upload_images/upload_images_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'store_detail_widget.dart' show StoreDetailWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StoreDetailModel extends FlutterFlowModel<StoreDetailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Models for review dynamic component.
  late FlutterFlowDynamicModels<ReviewModel> reviewModels;

  @override
  void initState(BuildContext context) {
    reviewModels = FlutterFlowDynamicModels(() => ReviewModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    reviewModels.dispose();
  }
}
