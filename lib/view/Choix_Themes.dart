import 'package:flutter/material.dart';

class Choix_Themes extends StatelessWidget {
  Choix_Themes({Key? key}) : super(key: key);

  final List<Map> myProducts =
  List.generate(9, (index) => {"id": index, "name": "themes $index"})
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:  Text('Choix du themes'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(0.0),
        color: Colors.blue[600],
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(0.0),
        child: Text('Hello World',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white)),
      )
    );
  }
}