import 'package:flutter/material.dart';
import 'package:fmr/view/home.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  const supabaseUrl = 'https://idfkocubajnpjyjamsak.supabase.co';
  const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlkZmtvY3ViYWpucGp5amFtc2FrIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTMzMzY4MjEsImV4cCI6MTk2ODkxMjgyMX0.u_-eHLYoxGG1EavMN1tFwxf09meVlY1Tw-PaDaDL2lI';

  final client = SupabaseClient(supabaseUrl, supabaseKey);
  final selectResponse = await client.from('theme').select('libelle').execute();
  if (selectResponse.error == null) {
    print('response.data: ${selectResponse.data}');
  }
  runApp(const MyApp());

}




class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: home(),
      ),
    );
  }
}

