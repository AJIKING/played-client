// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PrefectureStruct extends BaseStruct {
  PrefectureStruct({
    String? name,
  }) : _name = name;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static PrefectureStruct fromMap(Map<String, dynamic> data) =>
      PrefectureStruct(
        name: data['name'] as String?,
      );

  static PrefectureStruct? maybeFromMap(dynamic data) => data is Map
      ? PrefectureStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static PrefectureStruct fromSerializableMap(Map<String, dynamic> data) =>
      PrefectureStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PrefectureStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PrefectureStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

PrefectureStruct createPrefectureStruct({
  String? name,
}) =>
    PrefectureStruct(
      name: name,
    );
