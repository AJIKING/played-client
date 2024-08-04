import '../database.dart';

class StoreTable extends SupabaseTable<StoreRow> {
  @override
  String get tableName => 'store';

  @override
  StoreRow createRow(Map<String, dynamic> data) => StoreRow(data);
}

class StoreRow extends SupabaseDataRow {
  StoreRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get addressLine => getField<String>('address_line')!;
  set addressLine(String value) => setField<String>('address_line', value);

  String get prefecture => getField<String>('prefecture')!;
  set prefecture(String value) => setField<String>('prefecture', value);

  String get createdUserId => getField<String>('created_user_id')!;
  set createdUserId(String value) => setField<String>('created_user_id', value);

  String get phoneNumber => getField<String>('phone_number')!;
  set phoneNumber(String value) => setField<String>('phone_number', value);
}
