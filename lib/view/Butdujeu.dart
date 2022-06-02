


import 'package:flutter/material.dart';

class Butdujeu extends StatelessWidget {
  const Butdujeu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(



      child: Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },

        label: const Text('Retour'),


        icon: const Icon(Icons.arrow_circle_left_rounded,color: Colors.white,),
        backgroundColor: Colors.blue,
      ),
        appBar: AppBar(

        centerTitle: true,

          title: const Text('But du Jeu' ,style: TextStyle(color: Colors.white
        ),) ,

          actions: <Widget>[
          IconButton(icon: Icon(IconData(0xe2d0, fontFamily: 'MaterialIcons'),color: Colors.white), onPressed: () {
            // do something
          },
          )
          ],

      ),



        body: Center(
          //SizedBox Widget
          child: SizedBox(
            width: 700.0,
            height: 400.0,
            child: Card(
              color: Colors.cyan,
              child: Center(
                child: Text(
                  'Regle du jeu',
                  style: TextStyle(color: Colors.white),
                ), //Text
              ), //Center
            ), //Card
          ), //SizedBox
        ),







      ),



    );


  }



}
