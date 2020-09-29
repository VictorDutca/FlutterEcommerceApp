import 'package:flutter/material.dart';
import 'package:testApp/ui/BodyHome.dart';
import 'package:testApp/ui/myAppBar.dart';
import 'package:testApp/ui/myDrawer.dart';

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
