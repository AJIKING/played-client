// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewStruct extends BaseStruct {
  ReviewStruct({
    String? id,
    String? storeId,
    String? comment,
    String? userId,
    double? star,
  })  : _id = id,
        _storeId = storeId,
        _comment = comment,
        _userId = userId,
        _star = star;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "store_id" field.
  String? _storeId;
  String get storeId => _storeId ?? '';
  set storeId(String? val) => _storeId = val;

  bool hasStoreId() => _storeId != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  set comment(String? val) => _comment = val;

  bool hasComment() => _comment != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "star" field.
  double? _star;
  double get star => _star ?? 0.0;
  set star(double? val) => _star = val;

  void incrementStar(double amount) => star = star + amount;

  bool hasStar() => _star != null;

  static ReviewStruct fromMap(Map<String, dynamic> data) => ReviewStruct(
        id: data['id'] as String?,
        storeId: data['store_id'] as String?,
        comment: data['comment'] as String?,
        userId: data['user_id'] as String?,
        star: castToType<double>(data['star']),
      );

  static ReviewStruct? maybeFromMap(dynamic data) =>
      data is Map ? ReviewStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'store_id': _storeId,
        'comment': _comment,
        'user_id': _userId,
        'star': _star,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'store_id': serializeParam(
          _storeId,
          ParamType.String,
        ),
        'comment': serializeParam(
          _comment,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'star': serializeParam(
          _star,
          ParamType.double,
        ),
      }.withoutNulls;

  static ReviewStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReviewStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        storeId: deserializeParam(
          data['store_id'],
          ParamType.String,
          false,
        ),
        comment: deserializeParam(
          data['comment'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        star: deserializeParam(
          data['star'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ReviewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReviewStruct &&
        id == other.id &&
        storeId == other.storeId &&
        comment == other.comment &&
        userId == other.userId &&
        star == other.star;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, storeId, comment, userId, star]);
}

ReviewStruct createReviewStruct({
  String? id,
  String? storeId,
  String? comment,
  String? userId,
  double? star,
}) =>
    ReviewStruct(
      id: id,
      storeId: storeId,
      comment: comment,
      userId: userId,
      star: star,
    );
