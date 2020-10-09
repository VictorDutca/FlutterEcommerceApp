import 'package:flutter/material.dart';
import 'package:testApp/ui/details/carello/cartCounter.dart';

class FavBtnAndItemCounter extends StatelessWidget {
  int quantity;
  FavBtnAndItemCounter({Key key, this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(quantity: quantity),
        Container(
          padding: EdgeInsets.all(1),
          height: 27,
          width: 27,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.favorite),
        )
      ],
    );
  }
}
