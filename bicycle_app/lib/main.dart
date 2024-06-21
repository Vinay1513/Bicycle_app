//import 'package:bicycle_app/Screens/getstarted.dart';
import 'package:bicycle_app/Screens/shop.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bicycle App',
      debugShowCheckedModeBanner: false,
      home:ShoppingScreen(),
    );
  }
}
