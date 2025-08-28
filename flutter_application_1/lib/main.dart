import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Imagenes",
      home: Scaffold(
        appBar: AppBar(title: Text("Mostrar imagenes")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 250.0,
                width: 550.0,
                child: Image.asset(
                  "elpandacreador_profile.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                height: 250.0,
                width: 550.0,
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/0/0f/Grosser_Panda.JPG",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
