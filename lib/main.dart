import 'package:flutter/material.dart';
import 'package:fmr/view/Home.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:postgres/postgres.dart';

import 'model/Joke.dart';

Future<void> main() async {

  runApp(const MyApp());
  List<String> selectedThemes = ["GE", "AB"];
  List<String> jokes = await Joke.test(selectedThemes);
  print('caca');
  print(jokes);
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
        body: const Home(),
      ),
    );
  }
}

