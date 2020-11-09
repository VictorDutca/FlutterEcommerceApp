import 'package:MobileHub/buisness_logic/entity/product.dart';
import 'package:MobileHub/services/service_locator.dart';
import 'package:MobileHub/services/storage/all_products_storage_abs.dart';
import 'package:bloc/bloc.dart';

// Initial state del bloc è uno stato che indica il caricamento in corso, lo stato iniziale
class ProductDetailPageViewModel extends Bloc<Events, AllDetailPageStates> {
  // Bloc<Tipo dell'evento , Tipo di stato che genererà>
  final AllProductsStorage _productsService =
      serviceLocator<AllProductsStorage>();
// prende un evento e restituisce generando un nuovo stato
  @override
  Stream<AllDetailPageStates> mapEventToState(Events event) async* {
    if (event is FetchEvent) {
      String url = event.product.description;
      final thisdescription = await _productsService.getDescription(url);
      // questo da me è un LazySingleton
      yield DetailPageLoadedState(thisdescription);
    }
  }

  @override
  AllDetailPageStates get initialState => DetailPageLoadingState();
}

abstract class Events {}

class FetchEvent extends Events {
  Product product;
  FetchEvent(this.product);
}

// due stati neccessari 1) stato di scaricamento 2) stato di scaricamento avvenuto

abstract class AllDetailPageStates {}

class DetailPageLoadingState extends AllDetailPageStates {}

class DetailPageLoadedState extends AllDetailPageStates {
  DetailPageLoadedState(this.description);
  String description;
}
