import 'package:ShopyFast/buisness_logic/entity/product.dart';
import 'package:ShopyFast/services/storage/products.dart';

class ProductsImpl implements Products {
  @override
  Future<List<Product>> getAllProducts() async {
    List<Product> list = [];
    list.add(Product(
      modelname: "One Plus 7",
      description: "Ottimo telefono",
      image: "assets/images/onePlus7.jpg",
    ));
    list.add(Product(
      modelname: "One Plus 8",
      description: "Ottimo telefono",
      image: "assets/images/oneplus8.jpg",
    ));
    list.add(Product(
      modelname: "Realmi 6 Pro",
      description: "Ottimo telefono",
      image: "assets/images/realmi6Pro.jpg",
    ));
    list.add(Product(
      modelname: "Xiaomi Redmi Note 9",
      description: "Ottimo telefono",
      image: "assets/images/XiaomiRedmiNote9.jpg",
    ));
    return list;
  }
}
