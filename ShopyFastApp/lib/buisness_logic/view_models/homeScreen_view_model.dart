import 'package:ShopyFast/buisness_logic/entity/product.dart';
import 'package:ShopyFast/services/service_locator.dart';
import 'package:ShopyFast/services/storage/products_storage_abs.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

// Initial state del bloc è uno stato che indica il caricamento in corso
class HomeScreenViewModel extends Bloc<HomeEvents, int> {
  // Bloc<Tipo dell'evento , Tipo di stato che genererà>
  final ProductsStorage _productsService = serviceLocator<ProductsStorage>();

  @override
  Stream<int> mapEventToState(HomeEvents event) {
    // prende un evento e restituisce generando un nuovo stato

    throw UnimplementedError();
  }

  @override
  // TODO: implement initialState
  int get initialState => throw UnimplementedError();
}

enum HomeEvents {
  Fetch,
}

// due stati neccessari 1) stato di scaricamento 2) stato di scaricamento avvenuto

abstract class AllHomeStates {}

class AllHomeLoadingState extends AllHomeStates {}

class AllHomeLoadedState extends AllHomeStates {
  //non mi è chiaro del perché debba avere la lista dei prodotti ? la restituisce come evento
  AllHomeLoadedState(this.product);
  List<Product> product;
}
