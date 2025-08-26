import 'package:flutter/material.dart';
// para que se usa material.dart ?

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const RootPage());
  }
}

// Raiz de la aplicacion
class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

// Estado de la raiz de la aplicacion
class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi primera aplicacion')),
      body: const Center(child: Text('Hola Mundo')),
    );
  }
}
