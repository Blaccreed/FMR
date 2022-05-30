import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
          },
          label: const Text('Retour'),

          icon: const Icon(Icons.arrow_circle_left_rounded,color: Colors.yellow,),
          backgroundColor: Colors.red,
        ),
        appBar: AppBar(

          centerTitle: true,
          title: const Text('' ),




          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                  icon: Icon(IconData(0xe2d0, fontFamily: 'MaterialIcons'),color: Colors.yellow),
                  text:"But du Jeu"
              ),



            ],
          ),
        ),

      ),
    );
  }
}
