import 'package:flutter/material.dart';

class Containerpage extends StatelessWidget {
  const Containerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(fontSize: 30.0),
      child: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.amber,
          alignment: Alignment.topLeft, //alinea los widgets child
          child: Text("Hola"),
        ),
      ),
    );
  }
}
