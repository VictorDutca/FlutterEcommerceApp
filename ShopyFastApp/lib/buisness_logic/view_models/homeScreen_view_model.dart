import 'package:ShopyFast/buisness_logic/entity/product.dart';
import 'package:ShopyFast/services/service_locator.dart';
import 'package:ShopyFast/services/storage/products_storage_abs.dart';

class HomeScreenViewModel {
  final ProductsStorage _productsService = serviceLocator<ProductsStorage>();

  List<Product> _allProducts = [];

  List<Product> get allProducts => _allProducts;

  Future<List<Product>> allProductsList() async {
    List<Product> list = [];
    list = await _productsService.getAllProducts();
    _allProducts = list;
    return list;
  }
}
