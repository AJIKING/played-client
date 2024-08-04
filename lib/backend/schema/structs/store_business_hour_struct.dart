// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoreBusinessHourStruct extends BaseStruct {
  StoreBusinessHourStruct({
    String? openTime,
    String? closeTime,
    int? code,
  })  : _openTime = openTime,
        _closeTime = closeTime,
        _code = code;

  // "open_time" field.
  String? _openTime;
  String get openTime => _openTime ?? '';
  set openTime(String? val) => _openTime = val;

  bool hasOpenTime() => _openTime != null;

  // "close_time" field.
  String? _closeTime;
  String get closeTime => _closeTime ?? '';
  set closeTime(String? val) => _closeTime = val;

  bool hasCloseTime() => _closeTime != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  set code(int? val) => _code = val;

  void incrementCode(int amount) => code = code + amount;

  bool hasCode() => _code != null;

  static StoreBusinessHourStruct fromMap(Map<String, dynamic> data) =>
      StoreBusinessHourStruct(
        openTime: data['open_time'] as String?,
        closeTime: data['close_time'] as String?,
        code: castToType<int>(data['code']),
      );

  static StoreBusinessHourStruct? maybeFromMap(dynamic data) => data is Map
      ? StoreBusinessHourStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'open_time': _openTime,
        'close_time': _closeTime,
        'code': _code,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'open_time': serializeParam(
          _openTime,
          ParamType.String,
        ),
        'close_time': serializeParam(
          _closeTime,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.int,
        ),
      }.withoutNulls;

  static StoreBusinessHourStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      StoreBusinessHourStruct(
        openTime: deserializeParam(
          data['open_time'],
          ParamType.String,
          false,
        ),
        closeTime: deserializeParam(
          data['close_time'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'StoreBusinessHourStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StoreBusinessHourStruct &&
        openTime == other.openTime &&
        closeTime == other.closeTime &&
        code == other.code;
  }

  @override
  int get hashCode => const ListEquality().hash([openTime, closeTime, code]);
}

StoreBusinessHourStruct createStoreBusinessHourStruct({
  String? openTime,
  String? closeTime,
  int? code,
}) =>
    StoreBusinessHourStruct(
      openTime: openTime,
      closeTime: closeTime,
      code: code,
    );
