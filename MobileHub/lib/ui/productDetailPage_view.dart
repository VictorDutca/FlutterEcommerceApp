import 'package:MobileHub/buisness_logic/entity/product.dart';
import 'package:MobileHub/buisness_logic/view_models/cart_view_model.dart';
import 'package:MobileHub/buisness_logic/view_models/productDetailPage_view_model.dart';

import 'package:MobileHub/ui/widgets/general_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsView extends StatefulWidget {
  final Product product;
  const ProductDetailsView({Key key, this.product}) : super(key: key);

  @override
  _ProductDetailsViewState createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(preferredSize: Size(100, 65), child: MyAppBar()),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    widget.product.modelname,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text("Prezzo", style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 5,
                ),
                Text("€ ${widget.product.price}",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Image(
                        image: NetworkImage(widget.product.image),
                        width: 270,
                        height: 250,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Description(widget: widget),
              ],
            ),
          ),
        ));
  }
}

class Description extends StatefulWidget {
  const Description({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final ProductDetailsView widget;

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProductDetailPageViewModel>(context)
        .add(FetchEvent(widget.widget.product));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailPageViewModel, AllDetailPageStates>(
        builder: (context, pageState) {
      if (pageState is DetailPageLoadedState) {
        final description = pageState.description;
        return Container(
          height: 240,
          decoration: BoxDecoration(
              color: Colors.blueGrey[300],
              borderRadius: BorderRadius.all(Radius.circular(24))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${widget.widget.product.modelname}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 120,
                      width: 300,
                      child: Scrollbar(
                        child: SingleChildScrollView(
                          child: Text(
                            description,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                AddToCartBtn(product: widget.widget.product),
              ],
            ),
          ),
        );
      } else {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              SizedBox(
                height: 10,
              ),
              //Text("Fetching Products")
            ],
          ),
        );
      }
    });
  }
}

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                  SizedBox(width: 3),
                  Text('Aggiungi al carrello'),
                ],
              ),
              color: Colors.amber,
              textColor: Colors.black,
              onPressed: () {
                BlocProvider.of<CartViewModel>(context)
                    .add(CartAddEvent(product));
                Scaffold.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.black,
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        " Prodotto aggiunto al carrello ",
                        style: TextStyle(color: Colors.amber),
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
