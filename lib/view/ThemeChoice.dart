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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 60,),
          Container(
            width: 100,
            child: FutureBuilder(
              future: themes,
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasData &&
                    snapshot.connectionState == ConnectionState.done) {
                  return ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,

                      separatorBuilder: (BuildContext context, int index) => const Divider(),
                      itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                        print(snapshot.data.length);
                        return Text(snapshot.data[index].toString());
                    },);
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
