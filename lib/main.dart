import 'package:flutter/material.dart';
import 'package:fmr/view/home.dart';

Future<void> main() async {

  runApp(const MyApp());
  Theme theme;

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

