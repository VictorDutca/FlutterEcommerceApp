import 'package:flutter/material.dart';
import 'package:testApp/ui/Product.dart';
import 'package:testApp/ui/constants.dart';

import 'addCart.dart';
import 'cartCounter.dart';
import 'colorAndSize.dart';
import 'description.dart';
import 'favBtn.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  //height: 500,
                  padding: EdgeInsets.only(
                      top: size.height * 0.12, left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(
                        product: product,
                      ),
                      Description(product: product),
                      FavBtn(),
                      AddCart(product: product),
                    ],
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          product.title,
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                            ])),
                            SizedBox(
                              width: kDefaultPadding,
                            ),
                            Expanded(
                              child: Image.asset(
                                product.image,
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
