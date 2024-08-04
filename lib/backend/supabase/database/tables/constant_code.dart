import '../database.dart';

class ConstantCodeTable extends SupabaseTable<ConstantCodeRow> {
  @override
  String get tableName => 'constant_code';

  @override
  ConstantCodeRow createRow(Map<String, dynamic> data) => ConstantCodeRow(data);
}

class ConstantCodeRow extends SupabaseDataRow {
  ConstantCodeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConstantCodeTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get code => getField<int>('code')!;
  set code(int value) => setField<int>('code', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
