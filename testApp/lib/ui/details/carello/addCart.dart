import 'package:flutter/material.dart';
import 'package:testApp/Product.dart';
import 'package:testApp/shoppingList.dart';

class AddCart extends StatelessWidget {
  const AddCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
            ),
            child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                child: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.black,
                ),
                color: Colors.blue[200],
                onPressed: () {
                  demoCarts.add(ProductLineItem(product: product, quantity: 1));
                }),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  color: product.color,
                  onPressed: () {},
                  child: Text("Compra Adesso".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold))),
            ),
          )
        ],
      ),
    );
  }
}
