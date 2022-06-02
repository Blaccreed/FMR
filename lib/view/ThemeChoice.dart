import 'package:flutter/material.dart';
import 'package:fmr/model/Thematique.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeChoice extends StatefulWidget {
  const ThemeChoice({Key? key}) : super(key: key);

  @override
  State<ThemeChoice> createState() => _ThemeChoiceState();
}

class _ThemeChoiceState extends State<ThemeChoice> {
  @override
  Widget build(BuildContext context) {
    Future themes = Thematique.getAllThemes();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder(
            future: themes,
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData &&
                  snapshot.connectionState == ConnectionState.done) {
                return Text(snapshot.data[0]);
              }

              return CircularProgressIndicator(
                color: HexColor("#ff8c01"),
              );
            },
          ),
        ],
      ),
    );
  }
}
