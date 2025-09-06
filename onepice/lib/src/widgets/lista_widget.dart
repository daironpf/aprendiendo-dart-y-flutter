import 'package:flutter/material.dart';

class ListaPersonajesWidget extends StatefulWidget {
  const ListaPersonajesWidget({super.key});

  @override
  State<ListaPersonajesWidget> createState() => _ListaPersonajesWidgetState();
}

class _ListaPersonajesWidgetState extends State<ListaPersonajesWidget> {
  final tituloStyleText = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return ListView(children: [Text("Portadas", style: tituloStyleText)]);
  }
}
