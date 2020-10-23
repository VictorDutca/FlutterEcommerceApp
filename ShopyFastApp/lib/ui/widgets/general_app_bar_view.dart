import 'package:flutter/material.dart';

class GeneralAppBar extends StatelessWidget implements PreferredSize {
  final String title;
  const GeneralAppBar({Key key, this.title}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(centerTitle: true, title: Text(title), actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.shopping_cart_outlined),
        onPressed: () {},
      ),
    ]);
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
