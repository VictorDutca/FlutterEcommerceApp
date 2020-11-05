import 'package:MobileHub/buisness_logic/entity/product.dart';
import 'package:MobileHub/services/service_locator.dart';
import 'package:MobileHub/services/storage/all_products_storage_abs.dart';
import 'package:bloc/bloc.dart';

// Initial state del bloc è uno stato che indica il caricamento in corso, lo stato iniziale
class HomeScreenViewModel extends Bloc<HomeEvents, AllHomeStates> {
  // Bloc<Tipo dell'evento , Tipo di stato che genererà>
  final AllProductsStorage _productsService =
      serviceLocator<AllProductsStorage>();
// prende un evento e restituisce generando un nuovo stato
  @override
  Stream<AllHomeStates> mapEventToState(HomeEvents event) async* {
    if (event == HomeEvents.Fetch) {
      final products = await _productsService
          .getAllProducts(); // questo da me è un LazySingleton
      yield AllHomeLoadedState(products);
    }
  }

  @override
  AllHomeStates get initialState => AllHomeLoadingState();
}

enum HomeEvents {
  Fetch,
}

// due stati neccessari 1) stato di scaricamento 2) stato di scaricamento avvenuto

abstract class AllHomeStates {}

class AllHomeLoadingState extends AllHomeStates {}

class AllHomeLoadedState extends AllHomeStates {
  AllHomeLoadedState(this.product);
  List<Product> product;
}
