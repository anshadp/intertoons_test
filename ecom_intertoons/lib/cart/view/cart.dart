import 'package:ecom_intertoons/cart/hive_repository/fetch_cart_data.dart';
import 'package:ecom_intertoons/cart/view/cart_tile.dart';
import 'package:ecom_intertoons/cart/view/price_details.dart';
import 'package:ecom_intertoons/home/view/featured_products.dart';
import 'package:ecom_intertoons/products/models/top_product_model.dart';
import 'package:ecom_intertoons/products/widgets/recent_product.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<ProductDatum>? cartItems;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cartItems = FetchCartItem().fetchCartItems();

    totalItem();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart (${cartItems!.length})'),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                cartItems!.clear();
              });
              FetchCartItem().removeCartItem();
            },
            child: const Text(
              'Empty Cart',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: <Widget>[
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: cartItems!.length,
              itemBuilder: (context, index) {
                return CartTile(cartItem: cartItems![index]);
              },
            ),
            const Divider(
              thickness: 7,
              endIndent: 10,
              indent: 10,
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.abc),
                  Text('Avail offers / Coupens'),
                ],
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.play_arrow_rounded)),
            ),
            const Divider(
              thickness: 7,
              endIndent: 10,
              indent: 10,
            ),
            RecentProducts(text: 'Recent Products'),
            PriceDetails(
              itemTotal: totalItem(),
              productDiscount: productDiscount(),
            )
          ],
        ),
      ),
    );
  }

  double totalItem() {
    double totalPrice = 0;

    for (var element in cartItems!) {
      totalPrice += element.unitPrice!;
    }
    return totalPrice;
  }

  double productDiscount() {
    double discountPrice = 0;

    for (var element in cartItems!) {
      if (element.specialPrice != 0) {
        discountPrice += (element.unitPrice! * element.cartItemQty!) -
            (element.specialPrice! * element.cartItemQty!);
      }
      print(element.cartItemQty);
    }

    return discountPrice;
  }
}
