import 'dart:convert';

import 'package:ecom_intertoons/home/models/banner_model.dart';
import 'package:http/http.dart' as http;

Future<Banners> fetchBanner() async {
  final response = await http.get(Uri.parse(
      'https://wpr.intertoons.net/kmshoppyapi/api/v2/Products/HomeProducts'));

  Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'vendorUrlKey': 'kmshoppy'
  };

  if (response.statusCode == 200) {
    var test = Banners.fromJson(jsonDecode(response.body));

    return test;
  } else {
    throw Exception('Failed to load');
  }
}
