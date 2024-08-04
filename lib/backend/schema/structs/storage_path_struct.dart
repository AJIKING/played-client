// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoragePathStruct extends BaseStruct {
  StoragePathStruct({
    String? path,
  }) : _path = path;

  // "path" field.
  String? _path;
  String get path => _path ?? '';
  set path(String? val) => _path = val;

  bool hasPath() => _path != null;

  static StoragePathStruct fromMap(Map<String, dynamic> data) =>
      StoragePathStruct(
        path: data['path'] as String?,
      );

  static StoragePathStruct? maybeFromMap(dynamic data) => data is Map
      ? StoragePathStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'path': _path,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'path': serializeParam(
          _path,
          ParamType.String,
        ),
      }.withoutNulls;

  static StoragePathStruct fromSerializableMap(Map<String, dynamic> data) =>
      StoragePathStruct(
        path: deserializeParam(
          data['path'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StoragePathStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StoragePathStruct && path == other.path;
  }

  @override
  int get hashCode => const ListEquality().hash([path]);
}

StoragePathStruct createStoragePathStruct({
  String? path,
}) =>
    StoragePathStruct(
      path: path,
    );
