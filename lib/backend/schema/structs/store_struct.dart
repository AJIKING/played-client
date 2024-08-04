// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoreStruct extends BaseStruct {
  StoreStruct({
    String? id,
    String? name,
    String? phoneNumber,
    String? addressLine,
    List<StoragePathStruct>? storeImage,
    List<CategoryStruct>? category,
    PrefectureStruct? prefecture,
    List<StoreBusinessHourStruct>? storeBusinessHour,
  })  : _id = id,
        _name = name,
        _phoneNumber = phoneNumber,
        _addressLine = addressLine,
        _storeImage = storeImage,
        _category = category,
        _prefecture = prefecture,
        _storeBusinessHour = storeBusinessHour;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "address_line" field.
  String? _addressLine;
  String get addressLine => _addressLine ?? '';
  set addressLine(String? val) => _addressLine = val;

  bool hasAddressLine() => _addressLine != null;

  // "store_image" field.
  List<StoragePathStruct>? _storeImage;
  List<StoragePathStruct> get storeImage => _storeImage ?? const [];
  set storeImage(List<StoragePathStruct>? val) => _storeImage = val;

  void updateStoreImage(Function(List<StoragePathStruct>) updateFn) {
    updateFn(_storeImage ??= []);
  }

  bool hasStoreImage() => _storeImage != null;

  // "category" field.
  List<CategoryStruct>? _category;
  List<CategoryStruct> get category => _category ?? const [];
  set category(List<CategoryStruct>? val) => _category = val;

  void updateCategory(Function(List<CategoryStruct>) updateFn) {
    updateFn(_category ??= []);
  }

  bool hasCategory() => _category != null;

  // "prefecture" field.
  PrefectureStruct? _prefecture;
  PrefectureStruct get prefecture => _prefecture ?? PrefectureStruct();
  set prefecture(PrefectureStruct? val) => _prefecture = val;

  void updatePrefecture(Function(PrefectureStruct) updateFn) {
    updateFn(_prefecture ??= PrefectureStruct());
  }

  bool hasPrefecture() => _prefecture != null;

  // "store_business_hour" field.
  List<StoreBusinessHourStruct>? _storeBusinessHour;
  List<StoreBusinessHourStruct> get storeBusinessHour =>
      _storeBusinessHour ?? const [];
  set storeBusinessHour(List<StoreBusinessHourStruct>? val) =>
      _storeBusinessHour = val;

  void updateStoreBusinessHour(
      Function(List<StoreBusinessHourStruct>) updateFn) {
    updateFn(_storeBusinessHour ??= []);
  }

  bool hasStoreBusinessHour() => _storeBusinessHour != null;

  static StoreStruct fromMap(Map<String, dynamic> data) => StoreStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        phoneNumber: data['phone_number'] as String?,
        addressLine: data['address_line'] as String?,
        storeImage: getStructList(
          data['store_image'],
          StoragePathStruct.fromMap,
        ),
        category: getStructList(
          data['category'],
          CategoryStruct.fromMap,
        ),
        prefecture: PrefectureStruct.maybeFromMap(data['prefecture']),
        storeBusinessHour: getStructList(
          data['store_business_hour'],
          StoreBusinessHourStruct.fromMap,
        ),
      );

  static StoreStruct? maybeFromMap(dynamic data) =>
      data is Map ? StoreStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'phone_number': _phoneNumber,
        'address_line': _addressLine,
        'store_image': _storeImage?.map((e) => e.toMap()).toList(),
        'category': _category?.map((e) => e.toMap()).toList(),
        'prefecture': _prefecture?.toMap(),
        'store_business_hour':
            _storeBusinessHour?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'phone_number': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'address_line': serializeParam(
          _addressLine,
          ParamType.String,
        ),
        'store_image': serializeParam(
          _storeImage,
          ParamType.DataStruct,
          isList: true,
        ),
        'category': serializeParam(
          _category,
          ParamType.DataStruct,
          isList: true,
        ),
        'prefecture': serializeParam(
          _prefecture,
          ParamType.DataStruct,
        ),
        'store_business_hour': serializeParam(
          _storeBusinessHour,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static StoreStruct fromSerializableMap(Map<String, dynamic> data) =>
      StoreStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phone_number'],
          ParamType.String,
          false,
        ),
        addressLine: deserializeParam(
          data['address_line'],
          ParamType.String,
          false,
        ),
        storeImage: deserializeStructParam<StoragePathStruct>(
          data['store_image'],
          ParamType.DataStruct,
          true,
          structBuilder: StoragePathStruct.fromSerializableMap,
        ),
        category: deserializeStructParam<CategoryStruct>(
          data['category'],
          ParamType.DataStruct,
          true,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
        prefecture: deserializeStructParam(
          data['prefecture'],
          ParamType.DataStruct,
          false,
          structBuilder: PrefectureStruct.fromSerializableMap,
        ),
        storeBusinessHour: deserializeStructParam<StoreBusinessHourStruct>(
          data['store_business_hour'],
          ParamType.DataStruct,
          true,
          structBuilder: StoreBusinessHourStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'StoreStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is StoreStruct &&
        id == other.id &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        addressLine == other.addressLine &&
        listEquality.equals(storeImage, other.storeImage) &&
        listEquality.equals(category, other.category) &&
        prefecture == other.prefecture &&
        listEquality.equals(storeBusinessHour, other.storeBusinessHour);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        phoneNumber,
        addressLine,
        storeImage,
        category,
        prefecture,
        storeBusinessHour
      ]);
}

StoreStruct createStoreStruct({
  String? id,
  String? name,
  String? phoneNumber,
  String? addressLine,
  PrefectureStruct? prefecture,
}) =>
    StoreStruct(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      addressLine: addressLine,
      prefecture: prefecture ?? PrefectureStruct(),
    );
