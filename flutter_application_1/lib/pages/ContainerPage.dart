import 'package:flutter/material.dart';

class Containerpage extends StatelessWidget {
  const Containerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(fontSize: 30.0),
      child: Center(
        child: Container(
          // al tener el alto y ancho iguales es un cuadrado y al aumentar el borderRadius a la mitad del ancho o alto se vuelve un circulo
          width: 200.0,
          height: 200.0,
          alignment: Alignment.center, //alinea los widgets child
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
            ), // con only tanto en padding como en radius especificamos donde queremos la modificacion
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0,
              ),
            ],
          ),
          child: Text("Hola"),
        ),
      ),
    );
  }
}
