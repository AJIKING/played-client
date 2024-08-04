import '../database.dart';

class ReviewTable extends SupabaseTable<ReviewRow> {
  @override
  String get tableName => 'review';

  @override
  ReviewRow createRow(Map<String, dynamic> data) => ReviewRow(data);
}

class ReviewRow extends SupabaseDataRow {
  ReviewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReviewTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get storeId => getField<String>('store_id')!;
  set storeId(String value) => setField<String>('store_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get comment => getField<String>('comment')!;
  set comment(String value) => setField<String>('comment', value);

  double get star => getField<double>('star')!;
  set star(double value) => setField<double>('star', value);
}
