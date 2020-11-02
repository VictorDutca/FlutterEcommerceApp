import 'dart:ui';

import 'package:ShopyFast/buisness_logic/view_models/productDetailsPage_view_model.dart';
import 'package:ShopyFast/ui/home_navBar_view.dart';
import 'package:ShopyFast/ui/shoppingCart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppBar extends StatefulWidget {
  MyAppBar({Key key}) : super(key: key);
  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.search,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              buildStackIconBloc(),
              /* InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShoppingCartView()));
                },
                child: Icon(
                  Icons.shopping_cart,
                ),
              ), */
            ],
          ),
        ),
      ],
    ));
  }

  Widget buildStackIconBloc() {
    return BlocBuilder<ProductDetailsPageViewModel, AllDetailsPageState>(
        builder: (context, cartState) {
      return Stack(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShoppingCartView()))),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              child: Center(
                child: Text(
                  cartState.products.length.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}

/* AppBar(
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
    ); */
