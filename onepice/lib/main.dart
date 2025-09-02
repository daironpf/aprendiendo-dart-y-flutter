import 'package:flutter/material.dart';
import 'package:onepice/src/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "One Piece List", home: Home());
  }
}
