import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../model/Joke.dart';

class Duel extends StatefulWidget {
  const Duel({Key? key, required this.selectedThemes}) : super(key: key);
  final List<String> selectedThemes;

  @override
  State<Duel> createState() => _DuelState();
}

class _DuelState extends State<Duel> {
  late Future<List<String>> jokes = Joke.test(widget.selectedThemes);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#0000ff"),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 15,
            ),
            FutureBuilder(
              future: jokes,
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasData) {
                  return SizedBox(
                    width: 300,
                    height: 300,
                    child: Center(
                      child: Column(
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                snapshot.data[0],
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Il rigole !"),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green)),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Il rigole !"),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.red)),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }
                return Column(
                  children: [
                    Image.asset("assets/sammy.gif"),
                    SizedBox(height: 15,),
                    Text("Sammy recherche des blagues nuls pour vous !"),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

