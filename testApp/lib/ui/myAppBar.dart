import 'package:flutter/material.dart';
import 'package:testApp/ui/home/homeScreen.dart';
import 'package:testApp/ui/home/mainScreen.dart';

class MyAppBar extends StatefulWidget {
  MyAppBar({Key key}) : super(key: key);
  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainScreen()),
              );
            },
            child: Image(
              image: AssetImage("assets/images/logo.jpg"),
              width: 60.0,
              height: 60.0,
            ),
          ),
          Spacer(),
          Icon(Icons.shopping_cart),
        ],
      ),
      bottom: PreferredSize(
          child: Container(
            margin: const EdgeInsets.only(bottom: 5),
            width: 375.0,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "What are you looking for ?",
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.blue)),
              ),
            ),
          ),
          preferredSize: Size(50, 50)),
    );
  }
}
