import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'specified_commercial_transactions_law_widget.dart'
    show SpecifiedCommercialTransactionsLawWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SpecifiedCommercialTransactionsLawModel
    extends FlutterFlowModel<SpecifiedCommercialTransactionsLawWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel;

  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customAppbarModel.dispose();
  }
}
