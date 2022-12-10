import 'package:ecom_intertoons/products/models/top_product_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FetchCartItem {
  List<ProductDatum> fetchCartItems() {
    final myBox = Hive.box<ProductDatum>('cartBox');
    print(myBox.values);
    List<ProductDatum> cartItems = [];
    cartItems.addAll(myBox.values);
    return cartItems;
  }

  removeCartItem() async {
    final cartDb = await Hive.openBox<ProductDatum>('cartBox');
    cartDb.clear();
  }
}
