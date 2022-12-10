import 'dart:convert';

import 'package:badges/badges.dart';
import 'package:ecom_intertoons/cart/view/cart.dart';
import 'package:ecom_intertoons/products/hive_repository/add_to_cart.dart';
import 'package:ecom_intertoons/products/models/top_product_model.dart';
import 'package:ecom_intertoons/products/view/product_details.dart';
import 'package:ecom_intertoons/products/widgets/recent_product.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class ProductCard extends StatefulWidget {
  ProductCard({
    Key? key,
    required this.topProduct,
  }) : super(key: key);

  ProductDatum topProduct;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  final _baseUrl = 'https://wpr.intertoons.net/kmshoppyadmin/';

  final _textStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  final badgeStyle = const TextStyle(color: Colors.white);

  int? discountPercentage;

  @override
  void initState() {
    super.initState();
    discountPercentage = discount();
  }

  int discount() {
    return 100 *
        (widget.topProduct.unitPrice! - widget.topProduct.specialPrice!) ~/
        widget.topProduct.unitPrice!;
  }

  @override
  Widget build(BuildContext context) {
    return Badge(
      showBadge: (widget.topProduct.specialPrice! > 0) ? true : false,
      badgeColor: Colors.pinkAccent,
      padding: const EdgeInsets.all(10),
      position: const BadgePosition(top: -5, end: 0),
      badgeContent: Column(
        children: [
          Text(
            '$discountPercentage%',
            style: badgeStyle,
          ),
          Text(
            'Off',
            style: badgeStyle,
          )
        ],
      ),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ProductDetails(productsDetails: widget.topProduct),
          ),
        ),
        child: Container(
          width: 170,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            shadowColor: Colors.black,
            elevation: 5,
            margin: EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.favorite_border,
                    color: Colors.pink,
                  ),
                  Center(
                    child: Image.network(
                      _baseUrl + widget.topProduct.imageUrl!,
                      width: 100,
                    ),
                  ),
                  Text(
                    '${widget.topProduct.prName}',
                    style: _textStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: false,
                  ),
                  Text(
                    '₹${widget.topProduct.unitPrice}',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    (widget.topProduct.specialPrice! > 0)
                        ? '₹${widget.topProduct.specialPrice}'
                        : '₹${widget.topProduct.unitPrice}',
                    style: _textStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.topProduct.prWeight!,
                      ),
                      GestureDetector(
                        onTap: () {
                          AddToCart().addItemToCart(widget.topProduct);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Cart(),
                            ),
                          );
                        },
                        child: const Card(
                          elevation: 3,
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Icon(
                              Icons.add,
                              color: Colors.pink,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
