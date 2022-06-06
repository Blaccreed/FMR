import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fmr/view/Parameters.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: HexColor("#ff8c01")),
          onPressed: () {
            Navigator.push(context,  MaterialPageRoute(builder: (context) => const Parameters()));
          },
          child: Text("Jouer!"),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Règles"),
        )
      ],
    );
  }
}
