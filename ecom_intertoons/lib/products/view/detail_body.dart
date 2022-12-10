// ignore_for_file: leading_newlines_in_multiline_strings, lines_longer_than_80_chars

import 'package:ecom_intertoons/products/models/top_product_model.dart';
import 'package:ecom_intertoons/products/widgets/recent_product.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatefulWidget {
  DetailsBody({Key? key, required this.productData}) : super(key: key);

  ProductDatum productData;

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  final _baseUrl = 'https://wpr.intertoons.net/kmshoppyadmin/';

  bool showAbout = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            color: Colors.white,
            height: size.height / 3,
            width: size.width,
            child: Image.network(
              _baseUrl + widget.productData.imageUrl!,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productData.prName.toString().toUpperCase(),
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' ${widget.productData.prWeight}',
                  style: const TextStyle(color: Colors.grey, fontSize: 22),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '₹${widget.productData.unitPrice}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '₹${widget.productData.unitPrice}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {}, child: const Text('3% off'))
                      ],
                    ),
                    ElevatedButton(onPressed: () {}, child: const Text('Add')),
                  ],
                ),
                const Divider(),
                ListTile(
                  onTap: () {
                    setState(() {
                      showAbout = !showAbout;
                    });
                  },
                  title: const Text(
                    'About Product',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_up),
                ),
                Offstage(
                  offstage: showAbout,
                  child: Text(widget.productData.prName!),
                ),
              ],
            ),
          ),
          RecentProducts(
            text: 'You Might Also Like',
          )
        ],
      ),
    );
  }
}
