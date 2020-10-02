import 'package:flutter/material.dart';
import 'package:testApp/ui/home/BodyHome.dart';
import 'package:testApp/ui/someWidgets/myAppBar.dart';
import 'package:testApp/ui/someWidgets/myDrawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: MyAppBar(), preferredSize: Size(150, 110)),
      drawer: MyDrawer(),
      body: MyBody(),
    );
  }
}
