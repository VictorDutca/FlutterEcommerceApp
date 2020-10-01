import 'package:flutter/material.dart';
import 'package:testApp/ui/details/CartBody.dart';
import 'package:testApp/ui/details/shoppingList.dart';
import 'package:testApp/ui/myAppBar.dart';
import 'package:testApp/ui/myDrawer.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: shoppingAppBar(),
      body: CartBody(),
    );
  }

  AppBar shoppingAppBar() {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "Il Tuo carello",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "contiene: ${demoCarts.length} elementi",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
          )
        ],
      ),
    );
  }
}
