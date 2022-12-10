import 'package:banner_carousel/banner_carousel.dart';
import 'package:ecom_intertoons/home/models/banner_model.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  HomeBanner(
      {Key? key,
      required this.homeBanner,
      required this.futureBanner,
      required this.bannerType})
      : super(key: key);

  List<Datum>? homeBanner;
  late Future<Banners> futureBanner;
  String bannerType;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Banners>(
      future: futureBanner,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var carouselData = snapshot.data!.data!;
          homeBanner = carouselData[bannerType];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: BannerCarousel(
              showIndicator: false,
              banners: bannerImages(),
              animation: true,
              borderRadius: 10,
              onTap: (id) => print(id),
              width: 400,
              height: 180,
              indicatorBottom: false,
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  List<BannerModel> bannerImages() {
    List<BannerModel> listBanners = [];
    var baseUrl = 'https://wpr.intertoons.net/kmshoppyadmin/';
    for (var element in homeBanner!) {
      listBanners.add(BannerModel(
          imagePath: '${baseUrl + element.imageUrl!}',
          id: element.teId.toString()));
    }
    return listBanners;
  }
}
