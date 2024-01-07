import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://msjwjhoeeqjclpepkpfz.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1zandqaG9lZXFqY2xwZXBrcGZ6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDI5MDA3MTMsImV4cCI6MjAxODQ3NjcxM30.1uDVBAJDXcq-Mx4bxoaB19Ohqd9E0614WA_2Q3Efpd0';

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
