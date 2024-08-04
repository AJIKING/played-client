import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'upload_images_widget.dart' show UploadImagesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UploadImagesModel extends FlutterFlowModel<UploadImagesWidget> {
  ///  Local state fields for this component.

  int uploadIndex = 0;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  List<FFUploadedFile> uploadedLocalFiles1 = [];

  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];
  List<String> uploadedFileUrls2 = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
