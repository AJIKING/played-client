// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConstantCodeStruct extends BaseStruct {
  ConstantCodeStruct({
    int? code,
    String? name,
  })  : _code = code,
        _name = name;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  set code(int? val) => _code = val;

  void incrementCode(int amount) => code = code + amount;

  bool hasCode() => _code != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static ConstantCodeStruct fromMap(Map<String, dynamic> data) =>
      ConstantCodeStruct(
        code: castToType<int>(data['code']),
        name: data['name'] as String?,
      );

  static ConstantCodeStruct? maybeFromMap(dynamic data) => data is Map
      ? ConstantCodeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static ConstantCodeStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConstantCodeStruct(
        code: deserializeParam(
          data['code'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ConstantCodeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConstantCodeStruct &&
        code == other.code &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([code, name]);
}

ConstantCodeStruct createConstantCodeStruct({
  int? code,
  String? name,
}) =>
    ConstantCodeStruct(
      code: code,
      name: name,
    );
