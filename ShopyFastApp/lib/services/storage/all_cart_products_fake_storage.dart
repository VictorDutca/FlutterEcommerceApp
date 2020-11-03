import 'package:ShopyFast/buisness_logic/entity/product.dart';
import 'package:ShopyFast/services/storage/products_cart_storage_abs.dart';

class CartProductsFakeImp implements CartProducts {
  List<Product> cartlist = [];
  @override
  Future<List<Product>> getAllCartProducts() async {
    return cartlist;
  }

  @override
  Future<List<Product>> addProduct(Product product) async {
    cartlist.add(product);

    return cartlist;
  }

  @override
  Future<List<Product>> removeProduct(Product product) async {
    cartlist.remove(product);
    return cartlist;
  }
}
