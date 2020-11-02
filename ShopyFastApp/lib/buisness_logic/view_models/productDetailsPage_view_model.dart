import 'package:ShopyFast/buisness_logic/entity/product.dart';
import 'package:ShopyFast/services/service_locator.dart';
import 'package:ShopyFast/services/storage/products_cart_storage_abs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsPageViewModel
    extends Bloc<DetailsPageEvents, AllDetailsPageState> {
  CartProducts _cartProductsService = serviceLocator<CartProducts>();
  @override
  AllDetailsPageState get initialState => AllDetailsPageState([]);

  @override
  Stream<AllDetailsPageState> mapEventToState(DetailsPageEvents event) async* {
    if (event is DetailsPageAddEvent) {
      final productToAdd = event.product;
      final newCartProdutcs =
          await _cartProductsService.addProduct(productToAdd);
      yield AllDetailsPageState(newCartProdutcs);
    }
  }
}

abstract class DetailsPageEvents {}

class DetailsPageAddEvent extends DetailsPageEvents {
  Product product;
  DetailsPageAddEvent(this.product);
}

class AllDetailsPageState {
  List<Product> products;
  AllDetailsPageState(this.products);
}
