// Uso il pachetto get_it come un aiuto alla dependecy injection
// aiuto a divere ulteriormente la buisness logic dai servizzi

import 'package:ShopyFast/buisness_logic/view_models/homeScreen_view_model.dart';
import 'package:ShopyFast/services/storage/all_cart_products_fake_storage.dart';
import 'package:ShopyFast/services/storage/all_products_storage_abs.dart';
import 'package:ShopyFast/services/storage/all_products_fake_storage.dart';
import 'package:ShopyFast/services/storage/products_cart_storage_abs.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.instance;

void servicesConainer() {
  serviceLocator.registerLazySingleton<AllProductsStorage>(
      () => ProductsStorageFakeImpl());
  serviceLocator
      .registerLazySingleton<CartProducts>(() => CartProductsFakeImp());

  serviceLocator
      .registerFactory<HomeScreenViewModel>(() => HomeScreenViewModel());
}
