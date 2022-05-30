


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
          child:  Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blue,
            ),
          )
        )


      ),



    );
  }
}
