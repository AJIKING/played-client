import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String getBusinessHour(
  List<StoreBusinessHourStruct> storeBusinessHours,
  int weekCode,
) {
  for (var businessHour in storeBusinessHours) {
    if (businessHour.code == weekCode) {
      return '${businessHour.openTime} - ${businessHour.closeTime}';
    }
  }
  return "";
}
