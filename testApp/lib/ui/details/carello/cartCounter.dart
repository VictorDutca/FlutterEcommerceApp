import 'package:flutter/material.dart';
import '';

class CartCounter extends StatefulWidget {
  CartCounter({Key key}) : super(key: key);
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfitems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        cartButton(
            icon: Icons.remove,
            press: () {
              if (numOfitems > 1) {
                setState(() {
                  numOfitems--;
                  //probabilmente mi serve il prodotto e la lista
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            numOfitems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        cartButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfitems++;
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
