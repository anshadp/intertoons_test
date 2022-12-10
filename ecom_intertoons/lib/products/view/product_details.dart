import 'package:ecom_intertoons/products/models/top_product_model.dart';
import 'package:ecom_intertoons/products/view/detail_body.dart';
import 'package:flutter/material.dart';

// class ProducDetails extends Stat20idget {
//   const ProducDetails({Key? key, required this.productData}) : super(key: key);

//   final productData;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Text('dfg'));
//   }
// }

class ProductDetails extends StatelessWidget {
  ProductDetails({Key? key, required this.productsDetails}) : super(key: key);

  ProductDatum productsDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: DetailsBody(productData: productsDetails),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      actions: const [
        const Icon(Icons.search),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.shopping_cart_outlined),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
