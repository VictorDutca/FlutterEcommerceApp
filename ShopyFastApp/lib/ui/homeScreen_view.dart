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
    super.initState();
    model.allProductsList().then((products) {
      print(products);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GeneralAppBar(
          title: "Home",
        ),
        body: GridView.builder(
          itemCount: model.allProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.75),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: 160,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(model.allProducts[index].image),
                ),
                Text("${model.allProducts[index].modelname}"),
                Text("${model.allProducts[index].price}")
              ],
            ),
          ),
        ));
  }
}
