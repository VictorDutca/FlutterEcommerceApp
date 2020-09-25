import 'package:flutter/material.dart';
import 'package:testApp/ui/home/homeScreen.dart';
import 'package:testApp/ui/myAppBar.dart';
import 'package:testApp/ui/myBottomNav.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class ShopyFast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      home: Container(
        child: SafeArea(
          child: Scaffold(
            body: HomeScreen(),
            bottomNavigationBar: MyBottomNav(),
          ),
        ),
      ),
    );
  }
}
