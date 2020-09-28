import 'package:flutter/material.dart';
import 'package:testApp/ui/myDrawer.dart';
import 'package:testApp/ui/slider.dart';
import 'package:testApp/ui/myBottomNav.dart';
import 'package:testApp/ui/myAppBar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(child: MyAppBar(), preferredSize: Size(150, 100)),
      backgroundColor: Color(0xffe3e3e3),
      drawer: MyDrawer(),
      //bottomNavigationBar: MyBottomNav(),
      body: MySlider(),
    ));
  }
}

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
