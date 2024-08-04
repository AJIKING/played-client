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
import 'upload_store_widget.dart' show UploadStoreWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UploadStoreModel extends FlutterFlowModel<UploadStoreWidget> {
  ///  Local state fields for this page.

  dynamic prefectures;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (prefecture list)] action in UploadStore widget.
  ApiCallResponse? prefectureList;
  // Stores action output result for [Backend Call - API (category list)] action in UploadStore widget.
  ApiCallResponse? categoryList;
  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel;
  // State field(s) for store_name widget.
  FocusNode? storeNameFocusNode;
  TextEditingController? storeNameTextController;
  String? Function(BuildContext, String?)? storeNameTextControllerValidator;
  String? _storeNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'この項目は必須入力です。';
    }

    if (val.length < 4) {
      return '4文字以上で入力してください。';
    }

    return null;
  }

  // State field(s) for phone_number widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  String? _phoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'この項目は必須入力です。';
    }

    if (val.length < 9) {
      return '9文字以上で入力してください。';
    }
    if (val.length > 11) {
      return '11文字以内で入力してください。';
    }

    return null;
  }

  // State field(s) for category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for prefecture widget.
  String? prefectureValue;
  FormFieldController<String>? prefectureValueController;
  // State field(s) for address_line widget.
  FocusNode? addressLineFocusNode;
  TextEditingController? addressLineTextController;
  String? Function(BuildContext, String?)? addressLineTextControllerValidator;
  String? _addressLineTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'この項目は必須入力です。';
    }

    if (val.length < 6) {
      return '6文字以上で入力してください。';
    }

    return null;
  }

  // State field(s) for mondayOpenHour widget.
  String? mondayOpenHourValue;
  FormFieldController<String>? mondayOpenHourValueController;
  // State field(s) for mondayCloseHour widget.
  String? mondayCloseHourValue;
  FormFieldController<String>? mondayCloseHourValueController;
  // State field(s) for thuesdayOpenHour widget.
  String? thuesdayOpenHourValue;
  FormFieldController<String>? thuesdayOpenHourValueController;
  // State field(s) for thuesdayCloseHour widget.
  String? thuesdayCloseHourValue;
  FormFieldController<String>? thuesdayCloseHourValueController;
  // State field(s) for wednesdayOpenHour widget.
  String? wednesdayOpenHourValue;
  FormFieldController<String>? wednesdayOpenHourValueController;
  // State field(s) for wednesdayCloseHour widget.
  String? wednesdayCloseHourValue;
  FormFieldController<String>? wednesdayCloseHourValueController;
  // State field(s) for thuresdayOpenHour widget.
  String? thuresdayOpenHourValue;
  FormFieldController<String>? thuresdayOpenHourValueController;
  // State field(s) for thuresdayCloseHour widget.
  String? thuresdayCloseHourValue;
  FormFieldController<String>? thuresdayCloseHourValueController;
  // State field(s) for fridayOpenHour widget.
  String? fridayOpenHourValue;
  FormFieldController<String>? fridayOpenHourValueController;
  // State field(s) for fridayCloseHour widget.
  String? fridayCloseHourValue;
  FormFieldController<String>? fridayCloseHourValueController;
  // State field(s) for saturdayOpenHour widget.
  String? saturdayOpenHourValue;
  FormFieldController<String>? saturdayOpenHourValueController;
  // State field(s) for saturdayCloseHour widget.
  String? saturdayCloseHourValue;
  FormFieldController<String>? saturdayCloseHourValueController;
  // State field(s) for sundayOpenHour widget.
  String? sundayOpenHourValue;
  FormFieldController<String>? sundayOpenHourValueController;
  // State field(s) for sundayCloseHour widget.
  String? sundayCloseHourValue;
  FormFieldController<String>? sundayCloseHourValueController;
  // Stores action output result for [Custom Action - getPrefectureId] action in Button widget.
  String? prefectureId;
  // Stores action output result for [Custom Action - getCategoryId] action in Button widget.
  String? categoryId;
  // Stores action output result for [Custom Action - generateUuid] action in Button widget.
  String? storeId;
  // Stores action output result for [Custom Action - parseFromStringToDatetime] action in Button widget.
  DateTime? monOpenHour;
  // Stores action output result for [Custom Action - parseFromStringToDatetime] action in Button widget.
  DateTime? monCloseHour;
  // Stores action output result for [Custom Action - parseFromStringToDatetime] action in Button widget.
  DateTime? thueOpenHour;
  // Stores action output result for [Custom Action - parseFromStringToDatetime] action in Button widget.
  DateTime? thueCloseHour;
  // Stores action output result for [Custom Action - parseFromStringToDatetime] action in Button widget.
  DateTime? wedOpenHour;
  // Stores action output result for [Custom Action - parseFromStringToDatetime] action in Button widget.
  DateTime? wedCloseHour;
  // Stores action output result for [Custom Action - parseFromStringToDatetime] action in Button widget.
  DateTime? thurOpenHour;
  // Stores action output result for [Custom Action - parseFromStringToDatetime] action in Button widget.
  DateTime? thurCloseHour;
  // Stores action output result for [Custom Action - parseFromStringToDatetime] action in Button widget.
  DateTime? friOpenHour;
  // Stores action output result for [Custom Action - parseFromStringToDatetime] action in Button widget.
  DateTime? friCloseHour;
  // Stores action output result for [Custom Action - parseFromStringToDatetime] action in Button widget.
  DateTime? satOpenHour;
  // Stores action output result for [Custom Action - parseFromStringToDatetime] action in Button widget.
  DateTime? satCloseHour;
  // Stores action output result for [Custom Action - parseFromStringToDatetime] action in Button widget.
  DateTime? sunOpenHour;
  // Stores action output result for [Custom Action - parseFromStringToDatetime] action in Button widget.
  DateTime? sunCloseHour;

  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());
    storeNameTextControllerValidator = _storeNameTextControllerValidator;
    phoneNumberTextControllerValidator = _phoneNumberTextControllerValidator;
    addressLineTextControllerValidator = _addressLineTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customAppbarModel.dispose();
    storeNameFocusNode?.dispose();
    storeNameTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    addressLineFocusNode?.dispose();
    addressLineTextController?.dispose();
  }
}
