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
            child: Center(
              child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(
                              "https://vignette.wikia.nocookie.net/gtaxfilesiv/images/1/16/CJ.jpg/revision/latest?cb=20170311101231")))),
            ),
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
