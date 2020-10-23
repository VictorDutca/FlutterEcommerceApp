import 'package:ShopyFast/ui/widgets/drawer_view.dart';
import 'package:ShopyFast/ui/widgets/general_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:ShopyFast/services/service_locator.dart';

class HomeScreenView extends StatefulWidget {
  HomeScreenView({Key key}) : super(key: key);

  @override
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: GeneralAppBar(
          title: "Home",
        ),
        body: ListView(
          children: <Widget>[Text("data")],
        ));
  }
}
