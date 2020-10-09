import 'package:flutter/material.dart';
import 'package:testApp/Product.dart';
import 'package:testApp/ui/details/detailPage/detailBody.dart';
import 'package:testApp/ui/someWidgets/myAppBar.dart';

class DetailsScreen extends StatelessWidget {
  Product product;
  DetailsScreen({
    Key key,
    this.product,
  }) : super(key: key);

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
