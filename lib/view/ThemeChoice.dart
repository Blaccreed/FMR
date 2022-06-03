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

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),

          Text("Choississez votre thème !"),

          SizedBox(height: 15,),

          SizedBox(
            width: 250,
            child: FutureBuilder(
              future: themes,
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasData &&
                    snapshot.connectionState == ConnectionState.done) {
                  return ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: CheckboxListTile(
                          title: Text(snapshot.data[index]),
                          value: false,
                          onChanged: (bool? value) {
                            setState(() {
                              value = value!;
                            });
                          },
                          secondary: _Icon[index],
                        ),
                      );
                    },
                  );
                }
                return CircularProgressIndicator(
                  color: HexColor("#ff8c01"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
