import 'package:fmr/model/SupabaseHandler.dart';
import 'package:supabase/supabase.dart';

class Thematique {
  String cd;
  String wording;
  bool isCheck;

  Thematique({required this.cd, required this.wording, required this.isCheck});


  static List<Thematique> getThematiquesStates(){
    return [
      Thematique(cd: "BO", wording: "Bouffe", isCheck: false),
      Thematique(cd: "AN", wording: "Animaux", isCheck: false),
      Thematique(cd: "AB", wording: "Absurde", isCheck: false),
      Thematique(cd: "GE", wording: "Geek", isCheck: false),
      Thematique(cd: "VI", wording: "Ville", isCheck: false)
    ];
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