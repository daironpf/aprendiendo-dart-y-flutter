import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  final int contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Text('Contador $contador', style: TextStyle(fontSize: 20)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contador += 1;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
