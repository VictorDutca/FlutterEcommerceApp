import 'package:flutter/material.dart';
import 'package:testApp/favProductList.dart';

class WishBody extends StatefulWidget {
  WishBody({Key key}) : super(key: key);

  @override
  _WishBodyState createState() => _WishBodyState();
}

class _WishBodyState extends State<WishBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: SizedBox(
                width: 120,
                height: 120,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: favList[0].product.color,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(favList[0].product.image),
                ),
              ),
            ),
            Column(
              children: [
                Text("data"),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
