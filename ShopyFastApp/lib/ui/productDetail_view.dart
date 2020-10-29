import 'package:ShopyFast/buisness_logic/entity/product.dart';
import 'package:ShopyFast/ui/widgets/general_app_bar_view.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  final Product product;
  const ProductDetailsView({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(preferredSize: Size(100, 65), child: MyAppBar()),
        body: titleProduct());
  }

  Padding titleProduct() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product.modelname,
            style: TextStyle(fontSize: 35),
          ),
          SizedBox(
            height: 4,
          ),
          Text("Prezzo", style: TextStyle(fontSize: 20)),
          SizedBox(
            height: 5,
          ),
          Text("€ ${product.price}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.contain,
                  height: 350,
                  width: 300,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 1),
            height: 150,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24))),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

/* Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
              "Prezzo",
                style: TextStyle(fontSize: 20),
           ),
              SizedBox(
                height: 5,
              ),
              Text("€ ${product.price}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ), */
