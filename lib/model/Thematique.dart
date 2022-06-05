import 'package:fmr/model/SupabaseHandler.dart';
import 'package:supabase/supabase.dart';

class Thematique {
  String code;
  String libelle;
  bool isCheck;

  Thematique({required this.code, required this.libelle, required this.isCheck});

  String get idTheme {
    return code;
  }

  String get libelleTheme {
    return libelle;
  }



  static List<Thematique> getThematiquesStates(){
    return [
      Thematique(code: "AM", libelle: "Amour", isCheck: false),
      Thematique(code: "AN", libelle: "Animaux", isCheck: false),
      Thematique(code: "AB", libelle: "Absurde", isCheck: false),
      Thematique(code: "GE", libelle: "Geek", isCheck: false)
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