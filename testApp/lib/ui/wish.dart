import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  WishList({Key key}) : super(key: key);
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 90,
      color: Colors.blue,
      child: Text("data"),
    );
  }
}
