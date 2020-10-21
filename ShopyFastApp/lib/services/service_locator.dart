// Uso il pachetto get_it come un aiuto alla dependecy injection
// aiuto a divere ulteriormente la buisness logic dai servizzi

import 'package:ShopyFast/services/storage/products.dart';
import 'package:ShopyFast/services/storage/products_implementation.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.instance;

void servicesConainer() {
  serviceLocator.registerLazySingleton<Products>(() => ProductsImpl());
}
