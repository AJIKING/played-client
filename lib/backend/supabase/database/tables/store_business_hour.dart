import '../database.dart';

class StoreBusinessHourTable extends SupabaseTable<StoreBusinessHourRow> {
  @override
  String get tableName => 'store_business_hour';

  @override
  StoreBusinessHourRow createRow(Map<String, dynamic> data) =>
      StoreBusinessHourRow(data);
}

class StoreBusinessHourRow extends SupabaseDataRow {
  StoreBusinessHourRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreBusinessHourTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get storeId => getField<String>('store_id')!;
  set storeId(String value) => setField<String>('store_id', value);

  PostgresTime get openTime => getField<PostgresTime>('open_time')!;
  set openTime(PostgresTime value) =>
      setField<PostgresTime>('open_time', value);

  PostgresTime get closeTime => getField<PostgresTime>('close_time')!;
  set closeTime(PostgresTime value) =>
      setField<PostgresTime>('close_time', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int get code => getField<int>('code')!;
  set code(int value) => setField<int>('code', value);
}
