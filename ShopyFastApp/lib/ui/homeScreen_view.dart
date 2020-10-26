import 'package:ShopyFast/buisness_logic/entity/product.dart';
import 'package:ShopyFast/buisness_logic/view_models/homeScreen_view_model.dart';

import 'package:ShopyFast/ui/widgets/general_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:ShopyFast/services/service_locator.dart';

class HomeScreenView extends StatefulWidget {
  @override
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  HomeScreenViewModel model = serviceLocator<HomeScreenViewModel>();

  @override
  void initState() {
    model.allProductsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(
        title: "Home",
      ),
      body: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Image.asset(model.allProducts[1].image),
      ),
    );
  }
}
