import 'package:flutter/material.dart';
import 'package:testApp/ui/Product.dart';

class ProductLineItem {
  final Product product;
  final int quantity;
  ProductLineItem({@required this.product, @required this.quantity});
}

List<ProductLineItem> demoCarts = [];
