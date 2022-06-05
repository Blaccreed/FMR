


import 'package:flutter/material.dart';
import 'package:fmr/model/Thematique.dart';
import 'package:hexcolor/hexcolor.dart';

class SelectionSettings extends StatefulWidget {
  const SelectionSettings({Key? key}) : super(key: key);

  @override
  State<SelectionSettings> createState() => _SelectionSettingsState();
}

class _SelectionSettingsState extends State<SelectionSettings> {

  List<Thematique> thematiques = Thematique.getThematiquesStates();
  List<String> selectedThemes = [];


  @override
  Widget build(BuildContext context) {


    List<Widget> _Icon = [
      const Icon(Icons.favorite, color: Colors.red),

      const Icon(Icons.pets, color: Colors.brown),

      Icon(
        Icons.sentiment_very_satisfied,
        color: HexColor("#ff8c01"),
      ),

      const Icon(
        Icons.computer,
        color: Colors.black,
      ),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Choississez vos paramètres"),
        SizedBox(height: 20,),
        Center(

          child: SizedBox(
            width: 250,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
              itemCount:  thematiques.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: CheckboxListTile(
                    title: Text(thematiques[index].libelle),
                    value: thematiques[index].isCheck,
                    checkColor: HexColor("#ff8c01"),
                    onChanged: (value) {
                      setState(() {
                        thematiques[index].isCheck = value!;
                        if(thematiques[index].isCheck){
                           selectedThemes.add(thematiques[index].libelle);
                           print(selectedThemes.toString());
                        }
                        else{
                          selectedThemes.remove(thematiques[index].libelle);
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
        SizedBox(height: 15,),
      ],
    );
  }
}

class TeamNameSelection extends StatefulWidget {
  const TeamNameSelection({Key? key}) : super(key: key);

  @override
  State<TeamNameSelection> createState() => _TeamNameSelectionState();
}

class _TeamNameSelectionState extends State<TeamNameSelection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField()
      ],
    );
  }
}
