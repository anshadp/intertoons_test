import 'package:ecom_intertoons/products/models/top_product_model.dart';
import 'package:ecom_intertoons/products/widgets/productcard.dart';
import 'package:flutter/material.dart';

class FeaturedProducts extends StatelessWidget {
  FeaturedProducts({Key? key, required this.futureTopProducts})
      : super(key: key);

  final Future<TopProduct> futureTopProducts;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 325,
      child: Column(
        children: [
          ListTile(
            title: const Text(
              'Featured products',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: InkWell(
              onTap: () => print('object'),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'See More',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: FutureBuilder<TopProduct>(
            future: futureTopProducts,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var featuredProducts = snapshot.data!.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: featuredProducts!.length,
                  itemBuilder: (BuildContext context, int index) =>
                      ProductCard(topProduct: featuredProducts[index]),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
        ],
      ),
    );
  }
}
