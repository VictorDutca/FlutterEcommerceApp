import 'package:ShopyFast/buisness_logic/entity/product.dart';

abstract class CartProducts {
  Future<List<Product>> getAllCartProducts();
  Future<List<Product>> addProduct(Product product);
  Future<List<Product>> removeProduct(Product product);
}
