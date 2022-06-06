import 'package:fmr/model/SupabaseHandler.dart';
import 'package:supabase/supabase.dart';

class Joke {
  String id;
  String sentence;

  Joke({required this.id, required this.sentence,});


  // ignore: non_constant_identifier_names
  static Future<List<Joke>>  getJokesByCode(List<String> codeThemes) async {
    SupabaseClient client = SupabaseHandler.getConnection();

    List<Joke> jokes = [];
    for(String cd in codeThemes)
      {
        final query = await client
            .from('joke')
            .select('*')
            .eq('link.id', 'joke.id')
            .eq('link.cd', cd)
            .execute();
        var resultat = query.data;
        for(var v in resultat)
        {
          jokes.add(v);
        }
      }
    print(jokes);
    return jokes;
  }
  static Future<List<String>>  test(String cd) async {
    SupabaseClient client = SupabaseHandler.getConnection();

    List<String> jokes = [];
    final res = await client
        .from('joke')
        .select('sentence').eq('id', 1).execute();
    //final res = await client
    //    .from('joke')
    //    .select('sentence')


      print(res.data);
      return res.data;
  }

  //static Future<List<Joke>>  getJokes(String libelle) async {
  //  SupabaseClient client = SupabaseHandler.getConnection();
  //  List<String> themes = [];
  //  final query = await client
  //      .from('theme')
 //       .select('libelle')
 //       .execute();

  //  var resultat = query.data;
  //  for(var v in resultat)
  //  {
  //    themes.add(v['libelle']);
  //  }
  //  print(themes);
  //  return themes;
  //}

}