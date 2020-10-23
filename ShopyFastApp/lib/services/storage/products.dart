// Il contratto che tutti i servizzi che riguardano i prodotti seguiranno
// *come appunto* Uso una classe astratta proprio perché mi permette di scambiare
// le implementazioni concrete. È molto utile in realtà anche per separare
// i layer architetturali

import 'package:ShopyFast/buisness_logic/entity/product.dart';

abstract class Products {
  Future<List<Product>> getAllProducts();
  //Future<List<Product>> getAllFavoritesProducts();
}
