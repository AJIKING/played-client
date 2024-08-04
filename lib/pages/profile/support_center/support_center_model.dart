import '/components/accordion_widget.dart';
import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'support_center_widget.dart' show SupportCenterWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SupportCenterModel extends FlutterFlowModel<SupportCenterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel;
  // Model for accordion component.
  late AccordionModel accordionModel1;
  // Model for accordion component.
  late AccordionModel accordionModel2;
  // Model for accordion component.
  late AccordionModel accordionModel3;
  // Model for accordion component.
  late AccordionModel accordionModel4;
  // Model for accordion component.
  late AccordionModel accordionModel5;
  // Model for accordion component.
  late AccordionModel accordionModel6;
  // Model for accordion component.
  late AccordionModel accordionModel7;
  // Model for accordion component.
  late AccordionModel accordionModel8;
  // Model for accordion component.
  late AccordionModel accordionModel9;
  // Model for accordion component.
  late AccordionModel accordionModel10;

  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());
    accordionModel1 = createModel(context, () => AccordionModel());
    accordionModel2 = createModel(context, () => AccordionModel());
    accordionModel3 = createModel(context, () => AccordionModel());
    accordionModel4 = createModel(context, () => AccordionModel());
    accordionModel5 = createModel(context, () => AccordionModel());
    accordionModel6 = createModel(context, () => AccordionModel());
    accordionModel7 = createModel(context, () => AccordionModel());
    accordionModel8 = createModel(context, () => AccordionModel());
    accordionModel9 = createModel(context, () => AccordionModel());
    accordionModel10 = createModel(context, () => AccordionModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customAppbarModel.dispose();
    accordionModel1.dispose();
    accordionModel2.dispose();
    accordionModel3.dispose();
    accordionModel4.dispose();
    accordionModel5.dispose();
    accordionModel6.dispose();
    accordionModel7.dispose();
    accordionModel8.dispose();
    accordionModel9.dispose();
    accordionModel10.dispose();
  }
}
