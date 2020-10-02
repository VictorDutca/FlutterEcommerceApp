import 'package:flutter/material.dart';
import 'package:testApp/ui/Product.dart';

class ProductLineItem {
  final Product product;
  final int quantity;
  ProductLineItem({@required this.product, @required this.quantity});
}

List<ProductLineItem> demoCarts = [
  ProductLineItem(product: products[0], quantity: 2),
  ProductLineItem(product: products[1], quantity: 1),
  ProductLineItem(product: products[2], quantity: 2),
];

List<Product> miao = [];
