import 'dart:convert';

import 'package:MobileHub/buisness_logic/entity/product.dart';
import 'package:MobileHub/services/storage/all_products_storage_abs.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class AllProducts implements AllProductsStorage {
  @override
  Future<List<Product>> getAllProducts() async {
    final responce = await http.get(
        "https://alpenite03-alliance-prtnr-eu03-dw.demandware.net/s/RefArch/dw/shop/v20_10/product_search?client_id=aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&refine_1=cgid=electronics-televisions&expand=availability,%20images,%20prices,%20represented_products,%20variations");

    String rescponceBody = responce.body;
    dynamic jsonObject = json.decode(rescponceBody);
    Iterable hits = jsonObject["hits"];
    List<Product> products = hits.map((i) => Product.fromJson(i)).toList();

    return products;
  }

  @override
  Future<String> getDescription(String url) async {
    final responce = await http.get(url);
    String responceBody = responce.body;
    dynamic jsonObject = json.decode(responceBody);
    var description = jsonObject["short_description"];
    return description;
  }
}
