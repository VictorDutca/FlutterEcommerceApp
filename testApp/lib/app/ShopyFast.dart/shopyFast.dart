import 'package:flutter/material.dart';
import 'package:testApp/ui/home/homeScreen.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class ShopyFast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      home: HomeScreen(),
    );
  }
}
