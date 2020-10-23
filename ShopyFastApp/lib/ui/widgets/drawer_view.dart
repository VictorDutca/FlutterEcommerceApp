import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
}
