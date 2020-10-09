import 'package:flutter/material.dart';
import 'package:testApp/Product.dart';
import 'package:testApp/ui/details/carello/addCart.dart';
import 'package:testApp/ui/details/detailPage/favBtnAndItemCounter.dart';
import 'package:testApp/ui/details/detailPage/productNameImage.dart';
import 'colorAndSize.dart';
import 'description.dart';

class Body extends StatelessWidget {
  Product product;
  int quantity;
  Body({Key key, this.product, this.quantity = 0}) : super(key: key);
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
                      FavBtnAndItemCounter(quantity: quantity),
                      AddCart(product: product, quantity: quantity),
                    ],
                  ),
                ),
                ProductnameImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
