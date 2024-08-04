import '../database.dart';

class FileStorageTable extends SupabaseTable<FileStorageRow> {
  @override
  String get tableName => 'file_storage';

  @override
  FileStorageRow createRow(Map<String, dynamic> data) => FileStorageRow(data);
}

class FileStorageRow extends SupabaseDataRow {
  FileStorageRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FileStorageTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get path => getField<String>('path')!;
  set path(String value) => setField<String>('path', value);
}
