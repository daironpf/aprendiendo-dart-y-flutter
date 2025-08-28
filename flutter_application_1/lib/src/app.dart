import 'package:flutter/material.dart';
import './pages/contador.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Center(child: Contador()));
  }
}
