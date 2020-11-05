import 'package:MobileHub/buisness_logic/entity/product.dart';
import 'package:MobileHub/services/storage/all_products_storage_abs.dart';

class ProductsStorageFakeImpl implements AllProductsStorage {
  @override
  Future<List<Product>> getAllProducts() async {
    List<Product> list = [
      Product(
        modelname: "One Plus 7",
        description:
            "Penta Band - 5G - Wi-Fi - NFC - A-GPS Ceramic Shield - Display Super Retina XDR 6,1'' Resistente a gocce e schizzi - Modalita' Notte Doppia Fotocamera posteriore 12 MP - iOS 14 Processore A14 Bionic - Memoria interna: 128 GB Distribuito da APPLE Italia",
        image: "assets/images/onePlus7.jpg",
        price: 460.51,
      ),
      Product(
        modelname: "One Plus 8",
        description:
            "Penta Band - 5G - Wi-Fi - NFC - A-GPS Ceramic Shield - Display Super Retina XDR 6,1'' Resistente a gocce e schizzi - Modalita' Notte Doppia Fotocamera posteriore 12 MP - iOS 14 Processore A14 Bionic - Memoria interna: 128 GB Distribuito da APPLE Italia",
        image: "assets/images/oneplus8.jpg",
        price: 649.25,
      ),
      Product(
        modelname: "Realmi 6",
        description:
            "Penta Band - 5G - Wi-Fi - NFC - A-GPS Ceramic Shield - Display Super Retina XDR 6,1'' Resistente a gocce e schizzi - Modalita' Notte Doppia Fotocamera posteriore 12 MP - iOS 14 Processore A14 Bionic - Memoria interna: 128 GB Distribuito da APPLE Italia",
        image: "assets/images/realmi6.jpg",
        price: 204.99,
      ),
      Product(
        modelname: "Realmi 6 Pro",
        description:
            "Penta Band - 5G - Wi-Fi - NFC - A-GPS Ceramic Shield - Display Super Retina XDR 6,1'' Resistente a gocce e schizzi - Modalita' Notte Doppia Fotocamera posteriore 12 MP - iOS 14 Processore A14 Bionic - Memoria interna: 128 GB Distribuito da APPLE Italia",
        image: "assets/images/realmi6Pro.jpg",
        price: 255.99,
      ),
      Product(
        modelname: "Xiaomi Redmi Note 8",
        description:
            "Penta Band - 5G - Wi-Fi - NFC - A-GPS Ceramic Shield - Display Super Retina XDR 6,1'' Resistente a gocce e schizzi - Modalita' Notte Doppia Fotocamera posteriore 12 MP - iOS 14 Processore A14 Bionic - Memoria interna: 128 GB Distribuito da APPLE Italia",
        image: "assets/images/XiaomiRedmiNote8.jpg",
        price: 139.80,
      ),
      Product(
        modelname: "Xiaomi Redmi Note 9",
        description:
            "Penta Band - 5G - Wi-Fi - NFC - A-GPS Ceramic Shield - Display Super Retina XDR 6,1'' Resistente a gocce e schizzi - Modalita' Notte Doppia Fotocamera posteriore 12 MP - iOS 14 Processore A14 Bionic - Memoria interna: 128 GB Distribuito da APPLE Italia",
        image: "assets/images/XiaomiRedmiNote9.jpg",
        price: 199.98,
      ),
      Product(
        modelname: "Iphone 12 64GB",
        description:
            "Penta Band - 5G - Wi-Fi - NFC - A-GPS Ceramic Shield - Display Super Retina XDR 6,1'' Resistente a gocce e schizzi - Modalita' Notte Doppia Fotocamera posteriore 12 MP - iOS 14 Processore A14 Bionic - Memoria interna: 128 GB Distribuito da APPLE Italia",
        image: "assets/images/Iphone12.jpg",
        price: 939.99,
      ),
      Product(
        modelname: "Iphone 12 Pro 256GB",
        description: "Ottimo telefono",
        image: "assets/images/Iphone12Pro.jpg",
        price: 1310.55,
      ),
    ];
    await Future.delayed(Duration(seconds: 3));
    return list;
  }
}
