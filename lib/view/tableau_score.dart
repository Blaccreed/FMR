import 'package:flutter/material.dart';

void main() {
  runApp(const tableau_score());
}

class tableau_score extends StatelessWidget {
  const tableau_score({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.blue,
          centerTitle: true,
            title: const Text('Tableau des Scores')),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
          },

          label: const Text('Retour'),


          icon: const Icon(Icons.arrow_circle_left_rounded,color: Colors.white,),
          backgroundColor: Colors.blue,
        ),


        body: Column(
          children: const <Widget>[
            Spacer(),
            ElevatedCardExample(),
            FilledCardExample(),
            OutlinedCardExample(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}


class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.blue,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: const SizedBox(
          width: 600,
          height: 400,
          child: Center(child: Text('Equipe 1 Gagne !!!',style: TextStyle(fontSize: 30,color: Colors.white),)),

        ),
      ),
    );
  }
}


class FilledCardExample extends StatelessWidget {
  const FilledCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(

        color: Colors.blue,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('                      Equipe 1 \n\n Score : 10 points \n\n Nombre de blagues racontées: 18',style: TextStyle(fontSize: 15,color: Colors.white),)

          ),
        ),
      ),

    );
  }
}

class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.blue,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('                      Equipe 2 \n\n Score : 10 points \n\n Nombre de blagues racontées: 18',style: TextStyle(fontSize: 15,color: Colors.white),)),
        ),
      ),
    );
  }
}
