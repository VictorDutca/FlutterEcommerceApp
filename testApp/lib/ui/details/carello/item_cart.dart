import 'package:flutter/material.dart';
import 'package:testApp/shoppingList.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key key,
    @required this.sList,
  }) : super(key: key);
  final ProductLineItem sList;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 150,
          height: 120,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: sList.product.color,
                  borderRadius: BorderRadius.circular(15)),
              child: FlatButton(
                  onPressed: () {
                    return null;
                  },
                  child: Image.asset(sList.product.image)),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(sList.product.title,
                style: TextStyle(color: Colors.white, fontSize: 16)),
            SizedBox(
              height: 10,
            ),
            Text.rich(TextSpan(
                text: "€${sList.product.price}",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                children: [TextSpan(text: " quantità: ${sList.quantity}")]))
          ],
        )
      ],
    );
  }
}
