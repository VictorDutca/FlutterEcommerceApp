import 'package:flutter/material.dart';
import 'package:testApp/ui/myAppBar.dart';
import 'myDrawer.dart';

class Account extends StatefulWidget {
  final Function onNext;
  Account({Key key, this.onNext}) : super(key: key);

  @override
  _Account createState() => _Account();
}

class _Account extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: MyAppBar(), preferredSize: Size(150, 100)),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_box),
                hintText: "Username",
              ),
            )
          ],
        ),
      ),
    );
  }
}
