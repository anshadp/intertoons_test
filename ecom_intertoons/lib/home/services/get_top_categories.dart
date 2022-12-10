import 'dart:convert';

import 'package:ecom_intertoons/products/models/top_product_model.dart';
import 'package:http/http.dart' as http;

Future<TopProduct> fetchTopProduct() async {
  var url = Uri.parse(
      "https://wpr.intertoons.net/kmshoppyapi/api/v2/FeaturedProduct?custId=''&guestId=''");
  final response = await http.get(url, headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'vendorUrlKey': 'kmshoppy',
  });

  if (response.statusCode == 200) {
    print(response.body);
    var topProducts = TopProduct.fromJson(jsonDecode(response.body));

    return topProducts;
  } else {
    throw Exception();
  }
}
