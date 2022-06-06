import 'package:fmr/model/SupabaseHandler.dart';
import 'package:supabase/supabase.dart';

class Joke {
  String id;
  String sentence;

  Joke({required this.id, required this.sentence,});


  // ignore: non_constant_identifier_names

  static Future<List<String>>  test(List<String>codes) async {
    SupabaseClient client = SupabaseHandler.getConnection();

    List<String> jokes = [];

     for(String cd in codes){
       final query = await client
           .from('joke')
           .select().eq('cd', cd).execute();
       var resultat = query.data;
       for(var v in resultat)
         {
           jokes.add(v['sentence']);
         }
     }
      return jokes;
  }

}