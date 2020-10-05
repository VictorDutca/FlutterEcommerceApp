import 'package:flutter/material.dart';
import 'package:testApp/Product.dart';

class FavList {
  final Product product;
  FavList({
    @required this.product,
  });
}

List<FavList> favList = [FavList(product: products[0])];
