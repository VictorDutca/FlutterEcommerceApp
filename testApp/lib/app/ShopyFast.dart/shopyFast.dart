import 'package:flutter/material.dart';

import 'package:testApp/ui/home/mainScreen.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class ShopyFast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      home: MainScreen(),
    );
  }
}
