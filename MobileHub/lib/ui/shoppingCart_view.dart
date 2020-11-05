import 'package:MobileHub/buisness_logic/entity/product.dart';
import 'package:MobileHub/buisness_logic/view_models/cart_view_model.dart';
import 'package:MobileHub/ui/productDetailPage_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartViewModel, CartState>(builder: (context, cartState) {
      final List<Product> products = cartState.products;
      if (products.isEmpty) {
        return Scaffold(
          appBar: thisAppBar(),
          body: NothingAdded(),
        );
      } else {
        return Scaffold(
          appBar: thisAppBar(),
          body: thisBody(),
          bottomNavigationBar: thisBottomNav(),
        );
      }
    });
  }

  Widget thisBottomNav() =>
      BlocBuilder<CartViewModel, CartState>(builder: (context, cartState) {
        final List<Product> products = cartState.products;
        final totalcost = products.length > 0
            ? products.map((it) => it.price).reduce((a, b) => a + b)
            : 0.0;
        if (products.length > 0) {
          return Container(
            height: 100,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                offset: Offset(0, -0.1),
                blurRadius: 2,
                color: Colors.black.withOpacity(0.1),
              )
            ]),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Totale:",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          totalcost.toString(),
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 60,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.account_balance_wallet,
                              color: Colors.black,
                            ),
                            //SizedBox(width: 5),
                            Text(
                              'Checkout',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        color: Colors.amber,
                        textColor: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Container();
        }
      });

  Widget thisBody() =>
      BlocBuilder<CartViewModel, CartState>(builder: (context, cartState) {
        final List<Product> products = cartState.products;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Dismissible(
                direction: DismissDirection.endToStart,
                key: UniqueKey(),
                background: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red),
                  child: Row(
                    children: [
                      Spacer(),
                      Icon(
                        Icons.delete,
                        size: 50,
                      )
                    ],
                  ),
                ),
                onDismissed: (direction) {
                  BlocProvider.of<CartViewModel>(context)
                      .add(CartRemoveEvent(products[index]));
                },
                child: Row(
                  children: <Widget>[
                    SizedBox(
                        width: 150,
                        height: 120,
                        child: AspectRatio(
                          aspectRatio: 0.88,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: FlatButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProductDetailsView(
                                              product: products[index],
                                            ))),
                                child: Image.asset(products[index].image)),
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(products[index].modelname,
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        SizedBox(
                          height: 10,
                        ),
                        Text.rich(TextSpan(
                            text: "€${products[index].price}",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                            children: [TextSpan(text: " ")]))
                      ],
                    )
                  ],
                ),
              ),
            ),
            itemCount: products.length,
          ),
        );
      });

  Widget thisAppBar() {
    return AppBar(
      centerTitle: true,
      title:
          BlocBuilder<CartViewModel, CartState>(builder: (context, cartState) {
        final List<Product> products = cartState.products;
        final len = products.length;
        if (len > 0) {
          return Column(
            children: <Widget>[
              Text("Il carrello contiene "),
              Text("${products.length} prodotti")
            ],
          );
        } else {
          return Column(
            children: <Widget>[
              Text("Il carrello è vuoto"),
            ],
          );
        }
      }),
    );
  }
}

class NothingAdded extends StatelessWidget {
  const NothingAdded({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/cista_1.png"),
        ),
      ),
    );
  }
}
