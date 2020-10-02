import 'package:flutter/material.dart';
import 'package:testApp/Product.dart';
import 'package:testApp/constants.dart';
import 'package:testApp/ui/details/detailPage/details_screen.dart';
import 'package:testApp/ui/someWidgets/slider.dart';

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          MySlider(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ItemCard1(
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    product: products[0],
                                  ))),
                    ),
                    ItemCard2(
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    product: products[1],
                                  ))),
                    )
                  ])),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ItemCard3(
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    product: products[2],
                                  ))),
                    ),
                    ItemCard4(
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    product: products[3],
                                  ))),
                    )
                  ])),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ItemCard5(
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    product: products[4],
                                  ))),
                    ),
                    ItemCard6(
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    product: products[5],
                                  ))),
                    )
                  ])),
        ]));
  }
}

class ItemCard1 extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard1({Key key, this.product, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 180,
              width: 160,
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: products[0].color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${products[0]}",
                child: Image.asset(
                  products[0].image,
                ),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
                child: Text(
                  products[0].title,
                  style: TextStyle(color: Colors.white),
                )),
            Text(
              "€ ${products[0].price}",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ));
  }
}

class ItemCard2 extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard2({Key key, this.product, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 180,
              width: 160,
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: products[1].color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                products[1].image,
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
                child: Text(
                  products[1].title,
                  style: TextStyle(color: Colors.white),
                )),
            Text(
              "€ ${products[1].price}",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ));
  }
}

class ItemCard3 extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard3({Key key, this.product, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 180,
              width: 160,
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: products[2].color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                products[2].image,
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
                child: Text(
                  products[2].title,
                  style: TextStyle(color: Colors.white),
                )),
            Text(
              "€ ${products[2].price}",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ));
  }
}

class ItemCard4 extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard4({Key key, this.product, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 180,
              width: 160,
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: products[3].color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                products[3].image,
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
                child: Text(
                  products[3].title,
                  style: TextStyle(color: Colors.white),
                )),
            Text(
              "€ ${products[3].price}",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ));
  }
}

class ItemCard5 extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard5({Key key, this.product, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 180,
              width: 160,
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: products[4].color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                products[4].image,
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
                child: Text(
                  products[4].title,
                  style: TextStyle(color: Colors.white),
                )),
            Text(
              "€ ${products[4].price}",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ));
  }
}

class ItemCard6 extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard6({Key key, this.product, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 180,
              width: 160,
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: products[5].color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                products[5].image,
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
                child: Text(
                  products[5].title,
                  style: TextStyle(color: Colors.white),
                )),
            Text(
              "€ ${products[5].price}",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ));
  }
}
