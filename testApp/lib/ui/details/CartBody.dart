import 'package:flutter/material.dart';
import 'package:testApp/ui/details/shoppingList.dart';

import 'carello/item_cart.dart';

class CartBody extends StatefulWidget {
  @override
  _CartBodyState createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            direction: DismissDirection.endToStart,
            key: UniqueKey(),
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.red,
              ),
              child: Row(
                children: [
                  Spacer(),
                  Icon(
                    Icons.delete,
                    size: 50,
                    //color: Colors.black,
                  )
                ],
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                demoCarts.removeAt(index);
              });
            },
            child: CartItemCard(
              sList: demoCarts[index],
            ),
          ),
        ),
      ),
    );
  }
}
