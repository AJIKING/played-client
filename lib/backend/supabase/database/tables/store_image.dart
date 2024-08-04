import '../database.dart';

class StoreImageTable extends SupabaseTable<StoreImageRow> {
  @override
  String get tableName => 'store_image';

  @override
  StoreImageRow createRow(Map<String, dynamic> data) => StoreImageRow(data);
}

class StoreImageRow extends SupabaseDataRow {
  StoreImageRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreImageTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get createdUserId => getField<String>('created_user_id')!;
  set createdUserId(String value) => setField<String>('created_user_id', value);

  String get storeId => getField<String>('store_id')!;
  set storeId(String value) => setField<String>('store_id', value);

  String get path => getField<String>('path')!;
  set path(String value) => setField<String>('path', value);
}
