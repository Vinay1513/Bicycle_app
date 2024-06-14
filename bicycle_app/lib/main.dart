import 'package:bicycle_app/Screens/homescreen.dart';
import 'package:flutter/material.dart';
//import 'Screens/getstarted.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bicycle App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
