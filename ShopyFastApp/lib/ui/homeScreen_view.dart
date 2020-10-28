import 'package:ShopyFast/buisness_logic/view_models/homeScreen_view_model.dart';

import 'package:ShopyFast/ui/widgets/general_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenView extends StatefulWidget {
  @override
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeScreenViewModel>(context).add(HomeEvents.Fetch);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GeneralAppBar(
          title: "Home",
        ),
        body: buildGridView());
  }

  Widget buildGridView() {
    return BlocBuilder<HomeScreenViewModel, AllHomeStates>(
      builder: (context, state) {
        if (state is AllHomeLoadingState) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[CircularProgressIndicator(), Text("data")],
            ),
          );
        } else {
          final products = (state as AllHomeLoadedState).product;
          return GridView.builder(
            itemCount: products.length,
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
                    child: Image.asset(products[index].image),
                  ),
                  Text("${products[index].modelname}"),
                  Text("${products[index].price}")
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
