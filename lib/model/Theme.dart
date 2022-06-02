import 'package:fmr/model/SupabaseHandler.dart';
import 'package:supabase/supabase.dart';

class Theme {
  int id;
  String libelle;

  Theme({required this.id, required this.libelle});

  int get idTheme {
    return id;
  }

  String get libelleTheme {
    return libelle;
  }


  // ignore: non_constant_identifier_names
  static Future<List<String>>  getAllThemes() async {
    SupabaseClient client = SupabaseHandler.getConnection();
    List<String> themes = [];
    final query = await client
        .from('themes')
        .select('*')
        .execute();

    for(var v in query.data ?? [])
    {
      print(themes);
      themes.add(v);
    }
    return themes;
  }

}