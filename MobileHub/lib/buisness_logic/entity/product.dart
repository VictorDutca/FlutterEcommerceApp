class Product {
  String modelname, description, image;
  double price;

  Product({this.modelname, this.description, this.image, this.price});

  factory Product.fromJson(Map<String, dynamic> hit) {
    final modelname = hit["product_name"];
    final image = hit["image"]["link"];
    final price = hit["price"];
    return Product(modelname: modelname, price: price, image: image);
  }
}
