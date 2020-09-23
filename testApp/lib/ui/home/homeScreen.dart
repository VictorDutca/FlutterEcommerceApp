import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _myAppBar(),
        drawer: _myDrawer(),
      ),
    );
  }
}

AppBar _myAppBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image(
          image: AssetImage("assets/images/logo.jpg"),
          width: 60.0,
          height: 60.0,
        ),
        Spacer(),
        Icon(Icons.add_shopping_cart),
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

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

Drawer _myDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text("MenuHeader"),
          decoration: BoxDecoration(color: Colors.blue),
        ),
        ListTile(
            title: Text("item1"),
            onTap: () {
              return null;
            }),
        ListTile(
            title: Text("item2"),
            onTap: () {
              return null;
            })
      ],
    ),
  );
}
