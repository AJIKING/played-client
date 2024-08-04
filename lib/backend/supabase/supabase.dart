import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://tlxqdnsernrakefzeqnb.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRseHFkbnNlcm5yYWtlZnplcW5iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MDkwNjgsImV4cCI6MjAzNzI4NTA2OH0.xZoOni2eDOGawvalZOzhukxleOGpbqq3g0KVqm0ApcA';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
