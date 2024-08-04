// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryStruct extends BaseStruct {
  CategoryStruct({
    String? name,
  }) : _name = name;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static CategoryStruct fromMap(Map<String, dynamic> data) => CategoryStruct(
        name: data['name'] as String?,
      );

  static CategoryStruct? maybeFromMap(dynamic data) =>
      data is Map ? CategoryStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static CategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoryStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoryStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

CategoryStruct createCategoryStruct({
  String? name,
}) =>
    CategoryStruct(
      name: name,
    );
