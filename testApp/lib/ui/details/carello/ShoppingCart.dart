import 'package:flutter/material.dart';
import 'package:testApp/shoppingList.dart';
import 'package:testApp/ui/details/carello/CartAppBar.dart';
import 'package:testApp/ui/details/carello/CartBody.dart';

import '../../nothingAdded.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: CartAppbar(),
          preferredSize: Size(100, 80),
        ),
        body: productCartItem.length > 0 ? CartBody() : NothingAdded(),
        bottomNavigationBar:
            productCartItem.length > 0 ? CartBottomNav() : null,
      ),
    );
  }
}

class CartBottomNav extends StatelessWidget {
  const CartBottomNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
      height: 100,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 18, 32, 47),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -0.91),
              blurRadius: 5,
              color: Colors.black.withOpacity(0.20),
            )
          ]),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Text.rich(TextSpan(
                  text: "Totale:\n",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  children: [
                    TextSpan(
                        text: "€ 9999",
                        style: TextStyle(fontSize: 18, color: Colors.white))
                  ])),
              Spacer(),
              Container(
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange),
                child: FlatButton(onPressed: () {}, child: Text("Check Out")),
              ),
            ],
          )
        ],
      ),
    );
  }
}
