import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/flogo2.png'),
            Image.asset('assets/mlogo.png'),
            Image.asset('assets/rlogo.png'),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Jouer !"),
        )
      ],
    );
  }
}
