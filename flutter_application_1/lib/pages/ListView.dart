import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  final List<String> nombres = <String>[
    'Ana',
    'Juan',
    'Pedro',
    'Maria',
    'Luis',
    'Carmen',
    'Jose',
    'Lucia',
    'Miguel',
    'Sofia',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView")),
      body: ListView.builder(
        itemCount: nombres.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(nombres[index]),
            subtitle: const Text("Cualquier cosa"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // ignore: avoid_print
              print("Hola $index");
            },
          );
        },
      ),
    );
  }
}
