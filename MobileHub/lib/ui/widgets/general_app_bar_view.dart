import 'dart:ui';

import 'package:MobileHub/buisness_logic/entity/product.dart';
import 'package:MobileHub/buisness_logic/view_models/cart_view_model.dart';
import 'package:MobileHub/ui/home_navBar_view.dart';
import 'package:MobileHub/ui/shoppingCart_view.dart';
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
              "TechHub",
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
    return BlocBuilder<CartViewModel, CartState>(builder: (context, cartState) {
      final List<Product> products = cartState.products;
      return Stack(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartView()))),
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
                  products.length.toString(),
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
