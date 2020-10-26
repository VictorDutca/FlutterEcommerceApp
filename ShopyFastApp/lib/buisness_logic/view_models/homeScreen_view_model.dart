import 'package:ShopyFast/buisness_logic/entity/product.dart';
import 'package:ShopyFast/services/service_locator.dart';
import 'package:ShopyFast/services/storage/products_storage_abs.dart';

class HomeScreenViewModel {
  final ProductsStorage _productsService = serviceLocator<ProductsStorage>();

  List<Product> _allProducts = [];

  List<Product> get allProducts => _allProducts;

  void allProductsList() {
    List<Product> list = [];
    list = _productsService.getAllProducts();
    _allProducts = list;
  }
}
