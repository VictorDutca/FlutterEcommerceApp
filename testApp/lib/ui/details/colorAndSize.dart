import 'package:flutter/material.dart';

import '../Product.dart';
import '../constants.dart';
import 'colorDot.dart';

class ColorAndSize extends StatelessWidget {
  final Product product;
  const ColorAndSize({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "data",
              style: TextStyle(color: kTextColor),
            ),
            Row(children: [
              ColorDot(
                color: Color(0xFF356C95),
                isSelected: true,
              ),
              ColorDot(
                color: Color(0xFF212121),
              ),
              ColorDot(
                color: Color(0xFFF57F17),
              ),
            ]),
          ],
        ),
      ),
      Expanded(
          child: RichText(
              text: TextSpan(style: TextStyle(color: kTextColor), children: [
        TextSpan(text: "Dettagli prodotto \n"),
        TextSpan(text: "data", style: TextStyle(color: kTextColor)),
      ]))),
    ]);
  }
}
