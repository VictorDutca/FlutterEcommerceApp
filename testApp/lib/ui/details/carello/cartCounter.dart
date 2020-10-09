import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  int quantity;
  CartCounter({Key key, this.quantity}) : super(key: key);
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        cartButton(
            icon: Icons.remove,
            press: () {
              if (widget.quantity > 1) {
                setState(() {
                  widget.quantity--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "${widget.quantity}",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        cartButton(
            icon: Icons.add,
            press: () {
              setState(() {
                widget.quantity++;
              });
            })
      ],
    );
  }

  SizedBox cartButton({IconData icon, Function press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: FlatButton(
          padding: EdgeInsets.zero,
          color: Colors.blueAccent,
          onPressed: press,
          child: Icon(icon),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        ));
  }
}
