


import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SelectionSettings extends StatefulWidget {
  const SelectionSettings({Key? key}) : super(key: key);

  @override
  State<SelectionSettings> createState() => _SelectionSettingsState();
}

class _SelectionSettingsState extends State<SelectionSettings> {
  late List<bool> _isChecked;
  List<String> themes =["Amour", "Animaux", "Amour", "Geek"];
  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(themes.length, false);
  }

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
              itemCount: themes.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: CheckboxListTile(
                    title: Text(themes[index]),
                    value: _isChecked[index],
                    checkColor: HexColor("#ff8c01"),

                    onChanged: (value) {
                      setState(() {
                        _isChecked[index] = value!;
                      });
                    },
                    secondary: _Icon[index],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );;
  }
}
