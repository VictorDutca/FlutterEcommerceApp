import 'package:ShopyFast/buisness_logic/entity/product.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  final Product product;
  const ProductDetailsView({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              height: 200, width: 200, child: Image.asset(product.image))),
    );
  }
}
