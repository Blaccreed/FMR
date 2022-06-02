import 'package:fmr/model/SupabaseHandler.dart';
import 'package:supabase/supabase.dart';

class Thematique {
  int id;
  String libelle;

  Thematique({required this.id, required this.libelle});

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
        .from('theme')
        .select('libelle')
        .execute();

    var resultat = query.data;
    for(var v in resultat)
      {
        themes.add(v['libelle']);
      }
    print(themes);
    return themes;
  }

}