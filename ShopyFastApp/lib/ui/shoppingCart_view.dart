import 'package:ShopyFast/buisness_logic/view_models/cart_view_model.dart';
import 'package:ShopyFast/ui/productDetailPage_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: thisAppBar(),
      body: thisBody(),
    );
  }

  Widget thisBody() {
    return BlocBuilder<CartViewModel, CartState>(
        builder: (context, cartState) => Padding(
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
                          .add(CartRemoveEvent(cartState.products[index]));
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
                                                  product:
                                                      cartState.products[index],
                                                ))),
                                    child: Image.asset(
                                        cartState.products[index].image)),
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(cartState.products[index].modelname,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                            SizedBox(
                              height: 10,
                            ),
                            Text.rich(TextSpan(
                                text: "€${cartState.products[index].price}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                                children: [TextSpan(text: " quantità: x")]))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                itemCount: cartState.products.length,
              ),
            ));
  }

  Widget thisAppBar() {
    return AppBar(
      centerTitle: true,
      title:
          BlocBuilder<CartViewModel, CartState>(builder: (context, cartState) {
        return Column(
          children: <Widget>[
            Text("Il carrello contiene "),
            Text("${cartState.products.length} prodotti")
          ],
        );
      }),
    );
  }
}
