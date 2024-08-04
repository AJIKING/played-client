import '../database.dart';

class PrefectureTable extends SupabaseTable<PrefectureRow> {
  @override
  String get tableName => 'prefecture';

  @override
  PrefectureRow createRow(Map<String, dynamic> data) => PrefectureRow(data);
}

class PrefectureRow extends SupabaseDataRow {
  PrefectureRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PrefectureTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
