import 'package:ecom_intertoons/products/models/top_product_model.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  CartTile({Key? key, required this.cartItem}) : super(key: key);

  final _baseUrl = 'https://wpr.intertoons.net/kmshoppyadmin/';
  ProductDatum cartItem;

  ValueNotifier<int> itemQty = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(_baseUrl + cartItem.imageUrl!),
        ),
        title: Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              cartItem.prName!,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: InkWell(
                        onTap: () {
                          itemQty.value = itemQty.value - 1;
                        },
                        child: const Icon(
                          Icons.minimize,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ValueListenableBuilder(
                            valueListenable: itemQty,
                            builder: (BuildContext context, int counterValue,
                                Widget? child) {
                              return Text("$counterValue");
                            })),
                    InkWell(
                      onTap: () {
                        itemQty.value = itemQty.value + 1;
                        cartItem.cartItemQty = itemQty.value;
                      },
                      child: const Icon(
                        Icons.add,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '₹ ${cartItem.unitPrice.toString()}',
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  '₹ ${cartItem.specialPrice.toString()}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.red,
                    decoration: TextDecoration.lineThrough,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
