import 'package:flutter/material.dart';
import 'package:testApp/ui/Product.dart';

class ShoppingList {
  final Product product;
  final int numOfItems;
  ShoppingList({@required this.product, @required this.numOfItems});
}

List<ShoppingList> demoCarts = [
  ShoppingList(product: products[0], numOfItems: 2),
  ShoppingList(product: products[1], numOfItems: 1),
  ShoppingList(product: products[2], numOfItems: 2),
];
