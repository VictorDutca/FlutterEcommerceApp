import 'package:flutter/material.dart';

import '../../../shoppingList.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
