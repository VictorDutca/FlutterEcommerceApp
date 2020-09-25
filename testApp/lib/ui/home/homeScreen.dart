import 'package:flutter/material.dart';
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
      drawer: _myDrawer(),
      //bottomNavigationBar: MyBottomNav(),
      body: MySlider(),
    ));
  }
}

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

Drawer _myDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text("MenuHeader"),
          decoration: BoxDecoration(color: Colors.blue),
        ),
        ListTile(
            title: Text("item1"),
            onTap: () {
              return null;
            }),
        ListTile(
            title: Text("item2"),
            onTap: () {
              return null;
            })
      ],
    ),
  );
}
