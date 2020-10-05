import 'package:flutter/material.dart';
import 'package:testApp/ui/someWidgets/myAppBar.dart';
import 'package:testApp/ui/someWidgets/myDrawer.dart';
import 'package:testApp/ui/wishList/WishBody.dart';

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
            appBar:
                PreferredSize(child: MyAppBar(), preferredSize: Size(150, 100)),
            drawer: MyDrawer(),
            body: WishBody()));
  }
}
