import 'package:flutter/material.dart';

// Import your ProfileScreen
import 'profile_screen.dart'; // Adjust the path according to your file structure

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyAPP(), // Point d'entrée vers votre écran
    );
  }
}