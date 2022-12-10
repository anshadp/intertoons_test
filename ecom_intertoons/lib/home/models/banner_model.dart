// To parse this JSON data, do
//
//     final banner = bannerFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/widgets.dart';

Banners bannerFromJson(String str) => Banners.fromJson(json.decode(str));

String bannerToJson(Banners data) => json.encode(data.toJson());

class Banners {
  Banners({
    this.message,
    @required this.data,
  });

  String? message;
  late Map<String, List<Datum>?>? data;

  factory Banners.fromJson(Map<String, dynamic> json) => Banners(
        message: json["Message"],
        data: Map.from(json["Data"]).map((k, v) =>
            MapEntry<String, List<Datum>?>(
                k,
                v == null
                    ? null
                    : List<Datum>.from(v.map((x) => Datum.fromJson(x))))),
      );

  Map<String, dynamic> toJson() => {
        "Message": message,
        "Data": Map.from(data!).map((k, v) => MapEntry<String, dynamic>(k,
            v == null ? null : List<dynamic>.from(v.map((x) => x.toJson())))),
      };
}

class Datum {
  Datum({
    @required this.teId,
    @required this.elementName,
    @required this.imageUrl,
    @required this.position,
    @required this.status,
    @required this.delDate,
    @required this.link,
    @required this.mobUrlKey,
    @required this.mobType,
    @required this.catId,
    @required this.catName,
    @required this.image,
    @required this.parentId,
    @required this.code,
    @required this.description,
    @required this.urlKey,
    @required this.metaTitle,
    @required this.metaKeywords,
    @required this.metaDescription,
    @required this.catUrlKey,
    @required this.bannerImgUrl,
    @required this.showinofferZone,
    @required this.mobBannerImgUrl,
    @required this.tag,
    @required this.catOfferImg,
    @required this.categoryCommissionSlabs,
    @required this.productCategories,
    @required this.elementId,
    @required this.catname,
    @required this.catid,
    @required this.main,
  });

  int? teId;
  ElementName? elementName;
  String? imageUrl;
  int? position;
  bool? status;
  dynamic delDate;
  String? link;
  String? mobUrlKey;
  String? mobType;
  int? catId;
  String? catName;
  Images? image;
  int? parentId;
  String? code;
  dynamic description;
  dynamic urlKey;
  dynamic metaTitle;
  dynamic metaKeywords;
  dynamic metaDescription;
  String? catUrlKey;
  String? bannerImgUrl;
  bool? showinofferZone;
  dynamic mobBannerImgUrl;
  dynamic tag;
  String? catOfferImg;
  List<dynamic>? categoryCommissionSlabs;
  List<dynamic>? productCategories;
  int? elementId;
  String? catname;
  int? catid;
  int? main;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        teId: json["teId"] == null ? null : json["teId"],
        elementName: json["elementName"] == null
            ? null
            : elementNameValues.map[json["elementName"]],
        imageUrl: json["imageUrl"],
        position: json["position"],
        status: json["status"] == null ? null : json["status"],
        delDate: json["delDate"],
        link: json["Link"] == null ? null : json["Link"],
        mobUrlKey: json["mob_urlKey"] == null ? null : json["mob_urlKey"],
        mobType: json["mob_type"] == null ? null : json["mob_type"],
        catId: json["catId"] == null ? null : json["catId"],
        catName: json["catName"] == null ? null : json["catName"],
        image: json["image"] == null ? null : imageValues.map[json["image"]],
        parentId: json["parentId"] == null ? null : json["parentId"],
        code: json["code"] == null ? null : json["code"],
        description: json["description"],
        urlKey: json["urlKey"],
        metaTitle: json["metaTitle"],
        metaKeywords: json["metaKeywords"],
        metaDescription: json["metaDescription"],
        catUrlKey: json["catUrlKey"] == null ? null : json["catUrlKey"],
        bannerImgUrl:
            json["bannerImgUrl"] == null ? null : json["bannerImgUrl"],
        showinofferZone:
            json["showinofferZone"] == null ? null : json["showinofferZone"],
        mobBannerImgUrl: json["MobBannerImgUrl"],
        tag: json["tag"],
        catOfferImg: json["catOfferImg"] == null ? null : json["catOfferImg"],
        categoryCommissionSlabs: json["CategoryCommissionSlabs"] == null
            ? null
            : List<dynamic>.from(json["CategoryCommissionSlabs"].map((x) => x)),
        productCategories: json["ProductCategories"] == null
            ? null
            : List<dynamic>.from(json["ProductCategories"].map((x) => x)),
        elementId: json["elementId"] == null ? null : json["elementId"],
        catname: json["catname"] == null ? null : json["catname"],
        catid: json["catid"] == null ? null : json["catid"],
        main: json["main"] == null ? null : json["main"],
      );

  Map<String, dynamic> toJson() => {
        "teId": teId == null ? null : teId,
        "elementName":
            elementName == null ? null : elementNameValues.reverse[elementName],
        "imageUrl": imageUrl,
        "position": position,
        "status": status == null ? null : status,
        "delDate": delDate,
        "Link": link == null ? null : link,
        "mob_urlKey": mobUrlKey == null ? null : mobUrlKey,
        "mob_type": mobType == null ? null : mobType,
        "catId": catId == null ? null : catId,
        "catName": catName == null ? null : catName,
        "image": image == null ? null : imageValues.reverse[image],
        "parentId": parentId == null ? null : parentId,
        "code": code == null ? null : code,
        "description": description,
        "urlKey": urlKey,
        "metaTitle": metaTitle,
        "metaKeywords": metaKeywords,
        "metaDescription": metaDescription,
        "catUrlKey": catUrlKey == null ? null : catUrlKey,
        "bannerImgUrl": bannerImgUrl == null ? null : bannerImgUrl,
        "showinofferZone": showinofferZone == null ? null : showinofferZone,
        "MobBannerImgUrl": mobBannerImgUrl,
        "tag": tag,
        "catOfferImg": catOfferImg == null ? null : catOfferImg,
        "CategoryCommissionSlabs": categoryCommissionSlabs == null
            ? null
            : List<dynamic>.from(categoryCommissionSlabs!.map((x) => x)),
        "ProductCategories": productCategories == null
            ? null
            : List<dynamic>.from(productCategories!.map((x) => x)),
        "elementId": elementId == null ? null : elementId,
        "catname": catname == null ? null : catname,
        "catid": catid == null ? null : catid,
        "main": main == null ? null : main,
      };
}

enum ElementName {
  MOBILE_HOME_BANNER_SLIDER_360_X180,
  MOBILE_OFFER_ZONE_BANNER_SLIDER_360_X180,
  MOBILE_HOME_PROMO_FOOTER_BANNER_360_X180,
  CATEGORY4_IN1,
  CATEGORY4_IN1_X2,
  CATEGORY5_IN1
}

final elementNameValues = EnumValues({
  "Category4in1": ElementName.CATEGORY4_IN1,
  "Category4in1x2": ElementName.CATEGORY4_IN1_X2,
  "Category5in1": ElementName.CATEGORY5_IN1,
  "Mobile Home Banner Slider (360x180)":
      ElementName.MOBILE_HOME_BANNER_SLIDER_360_X180,
  "Mobile Home Promo Footer Banner (360x180)":
      ElementName.MOBILE_HOME_PROMO_FOOTER_BANNER_360_X180,
  "Mobile Offer Zone Banner Slider (360x180)":
      ElementName.MOBILE_OFFER_ZONE_BANNER_SLIDER_360_X180
});

enum Images { FAS_FA_ADJUST }

final imageValues = EnumValues({"fas fa-adjust": Images.FAS_FA_ADJUST});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => MapEntry(v, k));
    }
    return reverseMap!;
  }
}
