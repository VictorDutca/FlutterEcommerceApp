import 'package:ShopyFast/ui/homeScreen_view.dart';
import 'package:ShopyFast/ui/home_navBar_view.dart';
import 'package:flutter/material.dart';
import 'services/service_locator.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);
void main() {
  servicesConainer();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShopyFast',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      home: NavbarView(),
    );
  }
}
