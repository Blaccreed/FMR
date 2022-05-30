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
    static void  get  theme  async {
      //Future<List<Theme>> _ThemeList;
      SupabaseClient client = SupabaseHandler().ConnexionDB;
      final response = await client
          .from('theme')
          .select('id')
          .order('libelle')
          .execute();

      final data = response.data;

      if(data != null){
         Theme t1 = Theme(id: data['id'], libelle: data['libelle']);
      }
    }

}