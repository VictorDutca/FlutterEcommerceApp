import 'dart:ui';

import 'package:ShopyFast/ui/home_navBar_view.dart';
import 'package:ShopyFast/ui/shoppingCart_view.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  MyAppBar({Key key}) : super(key: key);
  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NavbarView()));
            },
            child: Image(
              image: AssetImage("assets/images/logo.jpg"),
              width: 60.0,
              height: 60.0,
            ),
          ),
          Text(
            "MobileHub",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 50,
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.search,
            ),
          ),
          Container(
            width: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShoppingCartView()));
            },
            child: Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
    );
  }
}
