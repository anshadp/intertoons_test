import 'package:flutter/material.dart';

class PriceDetails extends StatelessWidget {
  PriceDetails({
    Key? key,
    required this.itemTotal,
    required this.productDiscount,
  }) : super(key: key);

  double itemTotal;
  double productDiscount;

  final TextStyle _billText1 =
          const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      _billText2 = const TextStyle(
          fontSize: 20, fontWeight: FontWeight.w400, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Bill Details',
              style: _billText1,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Item Total',
                style: _billText2,
              ),
              Text(
                '₹ $itemTotal',
                style: _billText2,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Product Discount',
                style: _billText2,
              ),
              Text(
                '₹ $productDiscount',
                style: _billText2,
              ),
            ],
          ),
          const Divider(thickness: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sub Total',
                style: _billText1,
              ),
              Text(
                '₹ ${itemTotal - productDiscount}',
                style: _billText1,
              ),
            ],
          ),
          const Divider(thickness: 2),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
              width: double.infinity,
              height: 50, // <-- match_parent
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.pinkAccent)),
                onPressed: () {},
                child: Text(
                  'select delivery options'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
