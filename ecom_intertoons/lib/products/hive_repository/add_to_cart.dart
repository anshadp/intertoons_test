import 'package:ecom_intertoons/products/models/top_product_model.dart';
import 'package:hive/hive.dart';

class AddToCart {
  addItemToCart(ProductDatum value) async {
    final cartDb = await Hive.openBox<ProductDatum>('cartBox');
    await cartDb.put(value.productId, value);
  }
}
