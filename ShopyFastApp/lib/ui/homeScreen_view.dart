import 'package:ShopyFast/buisness_logic/view_models/homeScreen_view_model.dart';
import 'package:ShopyFast/ui/home_navBar_view.dart';
import 'package:ShopyFast/ui/productDetailPage_view.dart';
import 'package:ShopyFast/ui/widgets/drawer_view.dart';

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
    BlocProvider.of<HomeScreenViewModel>(context).add(HomeEvents
        .Fetch); // rimangono dei dubbi sufli stati iniziali e come concorrono
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: PreferredSize(preferredSize: Size(100, 65), child: MyAppBar()),
        body: buildGridView());
  }

  Widget buildGridView() {
    return BlocBuilder<HomeScreenViewModel, AllHomeStates>(
      builder: (context, state) {
        if (state is AllHomeLoadingState) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                SizedBox(
                  height: 10,
                ),
                Text("Asking Elon")
              ],
            ),
          );
        } else {
          final products = (state as AllHomeLoadedState).product;
          return GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
                childAspectRatio: 0.70),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductDetailsView(
                            product: products[index],
                          ))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 160,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(products[index].image),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(products[index].modelname),
                    ),
                    Text(
                      "€ ${products[index].price}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
