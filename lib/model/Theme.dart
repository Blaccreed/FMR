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
  static  Future<List<Theme>>  get themeFMR async {
    //Future<List<Theme>> _ThemeList;
    SupabaseClient client = SupabaseHandler().ConnexionDB;
    final selectResponse = await client
                                 .from('theme')
                                 .stream(['id'])
                                 .order('libelle')
                                 .execute()
                                 .listen((snapshot) {
                                       snapshot.toList();
                                       print(snapshot);
                                    });

  }


}