import 'package:flutter/material.dart';
import 'package:fmr/model/Thematique.dart';
import 'package:fmr/view/Duel.dart';
import 'package:hexcolor/hexcolor.dart';

import '../model/Joke.dart';

class Parameters extends StatefulWidget {
  const Parameters({Key? key}) : super(key: key);

  @override
  State<Parameters> createState() => _ParametersState();
}

class _ParametersState extends State<Parameters> {

  List<Thematique> thematiques = Thematique.getThematiquesStates();
  List<String> selectedThemes = [];
  final firstTeamController = TextEditingController();
  final secondTeamController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Widget> _Icon = [
      const Icon(Icons.fastfood_rounded, color: Colors.red),
      const Icon(Icons.pets, color: Colors.brown),
      Icon(
        Icons.sentiment_very_satisfied,
        color: HexColor("#ff8c01"),
      ),
      const Icon(
        Icons.computer,
        color: Colors.black,
      ),
      const Icon(
        Icons.location_city,
        color: Colors.grey,
      )
    ];

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor("#0000ff"),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("Vous êtes plutôt ? ",
                  style: TextStyle(color: Colors.white, fontSize: 25)),

              const SizedBox(
                height: 10,
              ),
              Center(
                child: SizedBox(
                  width: 250,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: thematiques.length,
                    itemBuilder: (BuildContext context,index) {
                      return Card(
                        child: CheckboxListTile(
                          title: Text(thematiques[index].wording),
                          value: thematiques[index].isCheck,
                          checkColor: Colors.white,
                          activeColor: HexColor("#ff8c01"),
                          onChanged: (value) {
                            setState(() {
                              thematiques[index].isCheck = value!;
                              if (thematiques[index].isCheck) {
                                selectedThemes.add(thematiques[index].cd);
                                print(selectedThemes.toString());
                              } else {
                                selectedThemes.remove(thematiques[index].cd);
                                print(selectedThemes.toString());
                              }
                            });
                          },
                          secondary: _Icon[index],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              SizedBox(
                width: 220,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    label: Text("Nom de la première équipe"),
                    border: OutlineInputBorder(),
                  ),
                  controller: firstTeamController,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //Nom de l'équipe 2
              SizedBox(
                width: 220,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    label: Text("Nom de la deuxième équipe"),
                    border: OutlineInputBorder(),
                  ),
                  controller: secondTeamController,
                ),
              ),

              ElevatedButton(
                  onPressed: () {
                    print(selectedThemes.toString());
                    Future<List<String>> jokes = Joke.test(selectedThemes);
                    print(jokes);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Duel(selectedThemes: selectedThemes, team1: firstTeamController.text, team2: secondTeamController.text,)),
                    );
                  },
                  child: Text("Lancez le duel ?"))
            ],
          ),
        ),
      ),
    );
  }
}
