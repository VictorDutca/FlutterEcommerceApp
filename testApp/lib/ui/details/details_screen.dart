import 'package:flutter/material.dart';
import 'package:testApp/ui/Product.dart';
import 'package:testApp/ui/details/detailBody.dart';
import 'package:testApp/ui/myAppBar.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: MyAppBar(), preferredSize: Size(150, 110)),
      backgroundColor: product.color,
      body: Body(
        product: product,
      ),
    );
  }
}
