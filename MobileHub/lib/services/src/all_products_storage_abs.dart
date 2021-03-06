// Il contratto che tutti i servizzi che riguardano i prodotti seguiranno
// *come appunto* Uso una classe astratta proprio perché mi permette di scambiare
// le implementazioni concrete. È molto utile in realtà anche per separare
// i layer architetturali

import 'package:MobileHub/buisness_logic/entity/product.dart';

abstract class AllProductsStorage {
  Future<List<Product>> getAllProducts();
  Future<String> getDescription(String url);
  //Future<List<Product>> getAllFavoritesProducts();
}
