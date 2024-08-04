import '../database.dart';

class CategoryTable extends SupabaseTable<CategoryRow> {
  @override
  String get tableName => 'category';

  @override
  CategoryRow createRow(Map<String, dynamic> data) => CategoryRow(data);
}

class CategoryRow extends SupabaseDataRow {
  CategoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoryTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
