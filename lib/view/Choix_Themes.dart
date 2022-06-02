import 'package:flutter/material.dart';






class Choix_Themes extends StatelessWidget {
  Choix_Themes({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title:  Text('Choix des themes', textAlign: TextAlign.center),
      ),

      floatingActionButton: FloatingActionButton.extended(

        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Retour'),


        icon: const Icon(Icons.arrow_circle_left_rounded,color: Colors.white,),
        backgroundColor: Colors.blue,
      ),
      body: Column(     //All elements are wrapped
        children: [     //in this column
          SizedBox(
            height: 15,
          ),

          Row(
            children: [
            ],
          ),
            SizedBox(
              height: 100,
            ),


          Column(
            children: [
              Card(

                color: Colors.blue,

                margin: EdgeInsets.all(10),

                elevation: 8,
                child: Container(

                  padding: EdgeInsets.all(25),

                  child: Text(

                    'blague',

                    style: TextStyle(color: Colors.white),

                  ),

                ),

              ),

              SizedBox(
                width: 4,
              ),

              Card(
                color: Colors.blue,
                margin: EdgeInsets.all(10),
                elevation: 8,
                child: Container(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'blague',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              Card(
                color: Colors.blue,
                margin: EdgeInsets.all(10),
                elevation: 8,
                child: Container(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'blague',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Card(
                color: Colors.blue,
                margin: EdgeInsets.all(10),
                elevation: 8,
                child: Container(

                  padding: EdgeInsets.all(25),
                  child: Text(
                    'blague',
                    style: TextStyle(color: Colors.white),
                  ),
                ),

              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                child: Text('Démarer'),

              )

            ],
          )



        ],
      ),

    );
  }
}