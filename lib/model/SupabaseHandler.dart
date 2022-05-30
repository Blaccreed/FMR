
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseHandler {
  static const supabaseUrl = 'https://idfkocubajnpjyjamsak.supabase.co';
  static const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlkZmtvY3ViYWpucGp5amFtc2FrIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTMzMzY4MjEsImV4cCI6MTk2ODkxMjgyMX0.u_-eHLYoxGG1EavMN1tFwxf09meVlY1Tw-PaDaDL2lI';




   SupabaseClient get ConnexionDB {
    final client = SupabaseClient(supabaseUrl, supabaseKey);
    return client;
  }

}