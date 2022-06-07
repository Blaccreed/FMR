import 'package:flutter/material.dart';
import 'package:fmr/model/Team.dart';
import 'package:hexcolor/hexcolor.dart';

import '../model/Game.dart';
import '../model/Joke.dart';

class Duel extends StatefulWidget {
  const Duel(
      {Key? key,
      required this.selectedThemes,
      required this.team1,
      required this.team2})
      : super(key: key);
  final List<String> selectedThemes;
  final String team1;
  final String team2;

  @override
  State<Duel> createState() => _DuelState();
}

class _DuelState extends State<Duel> {
  late Future<List<String>> jokes = Joke.test(widget.selectedThemes);
  late Team team1 = Team(widget.team1, 10, false);
  late Team team2 = Team(widget.team2, 10, false);
  late Game game = Game(team1, team2, 10, team1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#0000ff"),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("C'est le tour de :  ${game.hisTurn.name}", style: const TextStyle(color: Colors.white,fontSize: 20)),
            const SizedBox(
              height: 35,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 130,
                  width: 130,
                  color: HexColor("#ff8c01"),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(team1.name, style: const TextStyle(color: Colors.white,fontSize: 15)),
                      const SizedBox(height: 15,),
                      Center(child: Text(team1.score.toString(), style: const TextStyle(color: Colors.white,fontSize: 40)))

                    ],
                  ),
                ),

                const SizedBox(
                  width: 30,
                ),

                Container(
                  height: 130,
                  width: 130,
                  color: HexColor("#ff8c01"),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text(team2.name, style: const TextStyle(color: Colors.white,fontSize: 15)),
                      const SizedBox(height: 15,),
                      Center(child: Text(team2.score.toString(), style: const TextStyle(color: Colors.white,fontSize: 40))),

                    ],
                  ),
                )
              ],
            ),
            const Divider(),
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
                                style: const TextStyle(color: Colors.white,fontSize: 30),
                              ),
                            ),
                            color: HexColor("#ff8c01"),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  onPressed: () {

                                    setState(() {
                                      if(game.hisTurn == team1){
                                        team1.score = team1.addPoint(1);
                                        game.hisTurn = team2;
                                      }else {
                                        team2.addPoint(1);
                                        game.hisTurn = team1;
                                      }
                                    });

                                  },
                                  child: const Text("Il rigole !"),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green)),
                              const SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(game.hisTurn == team1){
                                        game.hisTurn = team2;
                                      }else {
                                        game.hisTurn = team1;
                                      }
                                    });
                                  },
                                  child: const Text("Il ne rigole pas !"),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.red)),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }
                return Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset("assets/sammy.gif"),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text("Sammy recherche des blagues nuls pour vous !"),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
