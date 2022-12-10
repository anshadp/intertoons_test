import 'package:banner_carousel/banner_carousel.dart';
import 'package:ecom_intertoons/home/models/banner_model.dart';
import 'package:ecom_intertoons/products/models/top_product_model.dart';
import 'package:ecom_intertoons/home/services/get_banner.dart';
import 'package:ecom_intertoons/home/services/get_top_categories.dart';
import 'package:ecom_intertoons/home/view/featured_products.dart';
import 'package:ecom_intertoons/home/view/widgets/home_banner.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Banners> _futureBanner;
  late Future<TopProduct> _futureTopProducts;

  List<Datum>? _homeBanner;

  @override
  void initState() {
    super.initState();
    _futureBanner = fetchBanner();
    _futureTopProducts = fetchTopProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        HomeBanner(
          homeBanner: _homeBanner,
          futureBanner: _futureBanner,
          bannerType: 'MobileMainBanners',
        ),
        FeaturedProducts(futureTopProducts: _futureTopProducts),
        HomeBanner(
          homeBanner: _homeBanner,
          futureBanner: _futureBanner,
          bannerType: 'MobileOfferZoneBanners',
        ),
      ],
    ));
  }
}
