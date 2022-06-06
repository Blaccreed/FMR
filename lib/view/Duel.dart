import 'package:flutter/material.dart';
import 'package:fmr/view/Parameters.dart';

import '../model/Joke.dart';


class Duel extends StatefulWidget {
  const Duel({Key? key,  required this.selectedThemes}) : super(key: key);
  final List<String> selectedThemes;

  @override
  State<Duel> createState() => _DuelState();
}

class _DuelState extends State<Duel> {

 late Future<List<Joke>> jokes = Joke.getJokesByCode(widget.selectedThemes);
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const SizedBox(
            height: 60,
          ),

          SizedBox(height: 15,),

          FutureBuilder(future: jokes,builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if(snapshot.data){
              return const Card(
                child: Text("caca"),
              );
            }
            return Image.asset("assets/sammy-searching.gif");
          },)
        ],
      ),
    );
  }
}
