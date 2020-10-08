import 'package:flutter/material.dart';

import '../../../shoppingList.dart';

class CartAppbar extends StatefulWidget {
  const CartAppbar({
    Key key,
  }) : super(key: key);

  @override
  _CartAppbarState createState() => _CartAppbarState();
}

class _CartAppbarState extends State<CartAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          SizedBox(
            height: 14,
          ),
          Text(
            "Il Tuo carello",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "contiene: ${productCartItem.length} elementi",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
          )
        ],
      ),
    );
  }
}
