import 'package:flutter/material.dart';

//clase donde se redibuja el widget segun los cambios
class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

//Clase donde escucha los cambios
class _ContadorState extends State<Contador> {
  int _cont = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contador")),
      body: Center(
        child: Text('Contador $_cont', style: TextStyle(fontSize: 20)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _incrementar();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _incrementar() {
    setState(() {
      //toda accion de modificacion de informacion o estado de variables, se debe poner aqui dentro para que se actualice en caliente.
      _cont++;
    });
  }
}
