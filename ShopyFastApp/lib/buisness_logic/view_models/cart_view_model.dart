import 'dart:ffi';

import 'package:ShopyFast/buisness_logic/entity/product.dart';
import 'package:ShopyFast/services/service_locator.dart';
import 'package:ShopyFast/services/storage/products_cart_storage_abs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartViewModel extends Bloc<CartEvents, CartState> {
  CartProducts _cartProductsService = serviceLocator<CartProducts>();
  @override
  CartState get initialState => CartState([]);

  @override
  Stream<CartState> mapEventToState(CartEvents event) async* {
    if (event is CartAddEvent) {
      final productToAdd = event.product;
      final newCartProdutcs =
          await _cartProductsService.addProduct(productToAdd);

      yield CartState(newCartProdutcs);
    } else if (event is CartRemoveEvent) {
      final productToRemove = event.product;

      final newCartProducts =
          await _cartProductsService.removeProduct(productToRemove);
      yield CartState(newCartProducts);
    }
  }
}

abstract class CartEvents {}

class CartAddEvent extends CartEvents {
  Product product;
  CartAddEvent(this.product);
}

class CartRemoveEvent extends CartEvents {
  Product product;
  CartRemoveEvent(this.product);
}

class CartState {
  List<Product> products;

  CartState(this.products);
}
