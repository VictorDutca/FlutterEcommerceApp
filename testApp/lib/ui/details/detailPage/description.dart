import 'package:flutter/material.dart';
import 'package:testApp/Product.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          product.description,
          style: TextStyle(color: Colors.black, height: 1.5),
        ));
  }
}
