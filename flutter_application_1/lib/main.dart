import 'package:flutter/material.dart';
import 'pages/ContainerPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:
          false, //quita la lista que dice que esta en debug
      title: "Container Widget",
      home: Containerpage(),
    );
  }
}
