import 'package:flutter/material.dart';
import 'package:testApp/ui/myAppBar.dart';
import 'package:testApp/ui/myDrawer.dart';

class WishList extends StatefulWidget {
  WishList({Key key}) : super(key: key);
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: MyDrawer(),
            appBar:
                PreferredSize(child: MyAppBar(), preferredSize: Size(150, 100)),
            body: Container(
              height: 120,
              width: 90,
              color: Colors.blue,
              child: Text("data"),
            )));
  }
}
