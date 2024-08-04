import '../database.dart';

class StoreCategoryTable extends SupabaseTable<StoreCategoryRow> {
  @override
  String get tableName => 'store_category';

  @override
  StoreCategoryRow createRow(Map<String, dynamic> data) =>
      StoreCategoryRow(data);
}

class StoreCategoryRow extends SupabaseDataRow {
  StoreCategoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreCategoryTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get storeId => getField<String>('store_id')!;
  set storeId(String value) => setField<String>('store_id', value);

  String get categoryId => getField<String>('category_id')!;
  set categoryId(String value) => setField<String>('category_id', value);
}
