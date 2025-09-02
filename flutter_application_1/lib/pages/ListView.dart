import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView")),
      body: ListView(
        children: <Widget>[
          Container(height: 50, color: Colors.red),
          Container(height: 50, color: Colors.amber),
          Container(height: 50, color: Colors.blue),
        ],
      ),
    );
  }
}
