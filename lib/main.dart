import 'package:flutter/material.dart';
import 'package:fmr/view/Butdujeu.dart';
import 'package:fmr/view/ThemeChoice.dart';
import 'package:fmr/view/home.dart';
import 'package:fmr/view/tableau_score.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {

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
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor("#0000ff"),
        body: home(),
      ),
    );
  }
}

