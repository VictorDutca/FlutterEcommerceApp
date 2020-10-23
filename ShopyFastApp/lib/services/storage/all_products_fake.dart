import 'package:ShopyFast/buisness_logic/entity/product.dart';
import 'package:ShopyFast/services/storage/products.dart';

class ProductsImplFake implements Products {
  @override
  Future<List<Product>> getAllProducts() async {
    List<Product> list = [];
    list.add(Product(
      modelname: "One Plus 7",
      description: "Ottimo telefono",
      image: "assets/images/onePlus7.jpg",
      price: 460,
    ));
    list.add(Product(
      modelname: "One Plus 8",
      description: "Ottimo telefono",
      image: "assets/images/oneplus8.jpg",
      price: 650,
    ));
    list.add(Product(
      modelname: "Realmi 6",
      description: "Ottimo telefono",
      image: "assets/images/realmi6.jpg",
      price: 205,
    ));
    list.add(Product(
      modelname: "Realmi 6 Pro",
      description: "Ottimo telefono",
      image: "assets/images/realmi6Pro.jpg",
      price: 255,
    ));
    list.add(Product(
      modelname: "Xiaomi Redmi Note 8",
      description: "Ottimo telefono",
      image: "assets/images/XiaomiRedmiNote8.jpg",
      price: 140,
    ));
    list.add(Product(
      modelname: "Xiaomi Redmi Note 9",
      description: "Ottimo telefono",
      image: "assets/images/XiaomiRedmiNote9.jpg",
      price: 200,
    ));
    list.add(Product(
      modelname: "Iphone 12 64GB",
      description: "Ottimo telefono",
      image: "assets/images/Iphone12.jpg",
      price: 939,
    ));
    list.add(Product(
      modelname: "Iphone 12 Pro 256GB",
      description: "Ottimo telefono",
      image: "assets/images/Iphone12Pro.jpg",
      price: 1310,
    ));
    return list;
  }
}
