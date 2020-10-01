import 'package:flutter/material.dart';

import '../Product.dart';
import '../constants.dart';

class ProductnameImage extends StatelessWidget {
  const ProductnameImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              product.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: "Prezzo \n"),
                  TextSpan(
                      text: "€ ${product.price}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold))
                ])),
                SizedBox(
                  width: kDefaultPadding,
                ),
                Expanded(
                  child: Hero(
                    tag: "${products[0]}",
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
