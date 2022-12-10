// To parse this JSON data, do
//
//     final topProduct = topProductFromJson(jsonString);

import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

part 'top_product_model.g.dart';

TopProduct topProductFromJson(String str) =>
    TopProduct.fromJson(json.decode(str));

String topProductToJson(TopProduct data) => json.encode(data.toJson());

class TopProduct {
  TopProduct({
    @required this.message,
    @required this.data,
  });

  String? message;
  List<ProductDatum>? data;

  factory TopProduct.fromJson(Map<String, dynamic> json) => TopProduct(
        message: json["Message"],
        data: List<ProductDatum>.from(
            json["Data"].map((x) => ProductDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Message": message,
        "Data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

@HiveType(typeId: 0)
class ProductDatum extends HiveObject {
  ProductDatum({
    @required this.venderName,
    @required this.venderDetails,
    @required this.vendorUrlKey,
    @required this.catName,
    @required this.imageUrl,
    @required this.catUrlKey,
    @required this.catId,
    @required this.cartItemQty,
    @required this.isWishlisted,
    @required this.isCarted,
    @required this.isAvailPincode,
    @required this.isReviewCount,
    @required this.reviewstatus,
    @required this.isReviewAvgrating,
    @required this.productId,
    @required this.vendorid,
    @required this.prDate,
    @required this.actDate,
    @required this.prName,
    @required this.sku,
    @required this.unitPrice,
    @required this.description,
    @required this.shortDescription,
    @required this.urlKey,
    @required this.metaTitle,
    @required this.metaKeywords,
    @required this.metaDescription,
    @required this.status,
    @required this.qoh,
    @required this.rank,
    @required this.availableFrom,
    @required this.availableTo,
    @required this.suspendedDate,
    @required this.newDate,
    @required this.delDate,
    @required this.maxQtyInOrders,
    @required this.soldQty,
    @required this.stockAvailability,
    @required this.backOrders,
    @required this.rol,
    @required this.roq,
    @required this.parentId,
    @required this.specialPrice,
    @required this.attributeSetId,
    @required this.pincodeSetId,
    @required this.prWeight,
    @required this.taxClassId,
    @required this.cessAmount,
    @required this.featuredImage,
    @required this.avgRating,
    @required this.reviewCount,
    @required this.dealFrom,
    @required this.dealTo,
    @required this.erpRefNo,
    @required this.productType,
    @required this.variationJson,
    @required this.bsl,
    @required this.prWeightMfactor,
    @required this.markupPercentage,
    @required this.productLabel,
    @required this.backgroundColorCode,
    @required this.isNew,
    @required this.costPrice,
    @required this.erpCat,
    @required this.prwmf,
    @required this.cartItems,
    @required this.keywords,
    @required this.taxClass,
    @required this.productCategories,
    @required this.productImages,
    @required this.productPincodes,
    @required this.vendor,
    @required this.productViews,
    @required this.reviews,
    @required this.saveForLaters,
    @required this.wishLists,
  });

  @HiveField(0)
  dynamic venderName;
  @HiveField(1)
  dynamic venderDetails;
  @HiveField(2)
  dynamic vendorUrlKey;
  @HiveField(3)
  dynamic catName;
  @HiveField(4)
  @HiveField(5)
  String? imageUrl;
  @HiveField(6)
  dynamic catUrlKey;
  @HiveField(7)
  int? catId;
  @HiveField(8)
  int? cartItemQty;
  @HiveField(9)
  bool? isWishlisted;
  @HiveField(10)
  bool? isCarted;
  @HiveField(11)
  bool? isAvailPincode;
  @HiveField(12)
  int? isReviewCount;
  @HiveField(13)
  int? reviewstatus;
  @HiveField(14)
  double? isReviewAvgrating;
  @HiveField(15)
  int? productId;
  @HiveField(16)
  int? vendorid;
  @HiveField(17)
  DateTime? prDate;
  @HiveField(18)
  dynamic? actDate;
  @HiveField(19)
  String? prName;
  @HiveField(20)
  String? sku;
  @HiveField(21)
  double? unitPrice;
  @HiveField(22)
  dynamic description;
  @HiveField(23)
  dynamic shortDescription;
  @HiveField(24)
  String? urlKey;
  @HiveField(25)
  String? metaTitle;
  @HiveField(26)
  String? metaKeywords;
  @HiveField(27)
  String? metaDescription;
  @HiveField(28)
  bool? status;
  @HiveField(29)
  double? qoh;
  @HiveField(30)
  int? rank;
  @HiveField(31)
  dynamic availableFrom;
  @HiveField(32)
  dynamic availableTo;
  @HiveField(33)
  dynamic suspendedDate;
  @HiveField(34)
  dynamic newDate;
  @HiveField(35)
  dynamic delDate;
  @HiveField(36)
  double? maxQtyInOrders;
  @HiveField(37)
  double? soldQty;
  @HiveField(38)
  String? stockAvailability;
  @HiveField(39)
  bool? backOrders;
  @HiveField(40)
  double? rol;
  @HiveField(41)
  double? roq;
  @HiveField(42)
  dynamic parentId;
  @HiveField(43)
  double? specialPrice;
  @HiveField(44)
  dynamic attributeSetId;
  @HiveField(45)
  dynamic pincodeSetId;
  @HiveField(46)
  String? prWeight;
  @HiveField(47)
  dynamic taxClassId;
  @HiveField(48)
  dynamic cessAmount;
  @HiveField(49)
  dynamic featuredImage;
  @HiveField(50)
  dynamic avgRating;
  @HiveField(51)
  dynamic reviewCount;
  @HiveField(52)
  DateTime? dealFrom;
  @HiveField(53)
  DateTime? dealTo;
  @HiveField(54)
  dynamic erpRefNo;
  @HiveField(55)
  dynamic productType;
  @HiveField(56)
  dynamic variationJson;
  @HiveField(57)
  dynamic bsl;
  @HiveField(58)
  dynamic prWeightMfactor;
  @HiveField(59)
  dynamic markupPercentage;
  @HiveField(60)
  String? productLabel;
  @HiveField(61)
  String? backgroundColorCode;
  @HiveField(62)
  dynamic isNew;
  @HiveField(63)
  dynamic costPrice;
  @HiveField(64)
  dynamic erpCat;
  @HiveField(65)
  dynamic prwmf;
  @HiveField(66)
  List<dynamic>? cartItems;
  @HiveField(67)
  List<dynamic>? keywords;
  @HiveField(68)
  dynamic taxClass;
  @HiveField(69)
  List<dynamic>? productCategories;
  @HiveField(70)
  List<dynamic>? productImages;
  @HiveField(71)
  List<dynamic>? productPincodes;
  @HiveField(72)
  dynamic vendor;
  @HiveField(73)
  List<dynamic>? productViews;
  @HiveField(74)
  List<dynamic>? reviews;
  @HiveField(75)
  List<dynamic>? saveForLaters;
  @HiveField(76)
  List<dynamic>? wishLists;

  factory ProductDatum.fromJson(Map<String, dynamic> json) => ProductDatum(
        venderName: json["venderName"],
        venderDetails: json["venderDetails"],
        vendorUrlKey: json["vendorUrlKey"],
        catName: json["catName"],
        imageUrl: json["imageUrl"],
        catUrlKey: json["catUrlKey"],
        catId: json["catId"],
        cartItemQty: json["CartItemQty"],
        isWishlisted: json["IsWishlisted"],
        isCarted: json["IsCarted"],
        isAvailPincode: json["IsAvailPincode"],
        isReviewCount: json["IsReviewCount"],
        reviewstatus: json["Reviewstatus"],
        isReviewAvgrating: json["IsReviewAvgrating"],
        productId: json["productId"],
        vendorid: json["vendorid"],
        prDate: DateTime.parse(json["prDate"]),
        actDate: json["actDate"],
        prName: json["prName"],
        sku: json["sku"],
        unitPrice: json["unitPrice"],
        description: json["description"],
        shortDescription: json["shortDescription"],
        urlKey: json["urlKey"],
        metaTitle: json["metaTitle"],
        metaKeywords: json["metaKeywords"],
        metaDescription: json["metaDescription"],
        status: json["status"],
        qoh: json["qoh"],
        rank: json["rank"],
        availableFrom: json["availableFrom"],
        availableTo: json["availableTo"],
        suspendedDate: json["suspendedDate"],
        newDate: json["newDate"],
        delDate: json["delDate"],
        maxQtyInOrders: json["maxQtyInOrders"],
        soldQty: json["soldQty"],
        stockAvailability: json["stockAvailability"],
        backOrders: json["backOrders"],
        rol: json["rol"],
        roq: json["roq"],
        parentId: json["parentId"],
        specialPrice: json["specialPrice"],
        attributeSetId: json["attributeSetId"],
        pincodeSetId: json["pincodeSetId"],
        prWeight: json["prWeight"],
        taxClassId: json["taxClassId"],
        cessAmount: json["cessAmount"],
        featuredImage: json["featuredImage"],
        avgRating: json["avgRating"],
        reviewCount: json["reviewCount"],
        dealFrom:
            json["dealFrom"] == null ? null : DateTime.parse(json["dealFrom"]),
        dealTo: json["dealTo"] == null ? null : DateTime.parse(json["dealTo"]),
        erpRefNo: json["erpRefNo"],
        productType: json["productType"],
        variationJson: json["variationJson"],
        bsl: json["bsl"],
        prWeightMfactor: json["prWeightMfactor"],
        markupPercentage: json["markupPercentage"],
        productLabel: json["productLabel"],
        backgroundColorCode: json["backgroundColorCode"],
        isNew: json["isNew"],
        costPrice: json["costPrice"],
        erpCat: json["erpCat"],
        prwmf: json["prwmf"],
        cartItems: List<dynamic>.from(json["CartItems"].map((x) => x)),
        keywords: List<dynamic>.from(json["Keywords"].map((x) => x)),
        taxClass: json["TaxClass"],
        productCategories:
            List<dynamic>.from(json["ProductCategories"].map((x) => x)),
        productImages: List<dynamic>.from(json["ProductImages"].map((x) => x)),
        productPincodes:
            List<dynamic>.from(json["ProductPincodes"].map((x) => x)),
        vendor: json["Vendor"],
        productViews: List<dynamic>.from(json["ProductViews"].map((x) => x)),
        reviews: List<dynamic>.from(json["Reviews"].map((x) => x)),
        saveForLaters: List<dynamic>.from(json["SaveForLaters"].map((x) => x)),
        wishLists: List<dynamic>.from(json["WishLists"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "venderName": venderName,
        "venderDetails": venderDetails,
        "vendorUrlKey": vendorUrlKey,
        "catName": catName,
        "imageUrl": imageUrl,
        "catUrlKey": catUrlKey,
        "catId": catId,
        "CartItemQty": cartItemQty,
        "IsWishlisted": isWishlisted,
        "IsCarted": isCarted,
        "IsAvailPincode": isAvailPincode,
        "IsReviewCount": isReviewCount,
        "Reviewstatus": reviewstatus,
        "IsReviewAvgrating": isReviewAvgrating,
        "productId": productId,
        "vendorid": vendorid,
        "prDate": prDate!.toIso8601String(),
        "actDate": actDate,
        "prName": prName,
        "sku": sku,
        "unitPrice": unitPrice,
        "description": description,
        "shortDescription": shortDescription,
        "urlKey": urlKey,
        "metaTitle": metaTitle,
        "metaKeywords": metaKeywords,
        "metaDescription": metaDescription,
        "status": status,
        "qoh": qoh,
        "rank": rank,
        "availableFrom": availableFrom,
        "availableTo": availableTo,
        "suspendedDate": suspendedDate,
        "newDate": newDate,
        "delDate": delDate,
        "maxQtyInOrders": maxQtyInOrders,
        "soldQty": soldQty,
        "stockAvailability": stockAvailability,
        "backOrders": backOrders,
        "rol": rol,
        "roq": roq,
        "parentId": parentId,
        "specialPrice": specialPrice,
        "attributeSetId": attributeSetId,
        "pincodeSetId": pincodeSetId,
        "prWeight": prWeight,
        "taxClassId": taxClassId,
        "cessAmount": cessAmount,
        "featuredImage": featuredImage,
        "avgRating": avgRating,
        "reviewCount": reviewCount,
        "dealFrom": dealFrom == null ? null : dealFrom!.toIso8601String(),
        "dealTo": dealTo == null ? null : dealTo!.toIso8601String(),
        "erpRefNo": erpRefNo,
        "productType": productType,
        "variationJson": variationJson,
        "bsl": bsl,
        "prWeightMfactor": prWeightMfactor,
        "markupPercentage": markupPercentage,
        "productLabel": productLabel,
        "backgroundColorCode": backgroundColorCode,
        "isNew": isNew,
        "costPrice": costPrice,
        "erpCat": erpCat,
        "prwmf": prwmf,
        "CartItems": List<dynamic>.from(cartItems!.map((x) => x)),
        "Keywords": List<dynamic>.from(keywords!.map((x) => x)),
        "TaxClass": taxClass,
        "ProductCategories":
            List<dynamic>.from(productCategories!.map((x) => x)),
        "ProductImages": List<dynamic>.from(productImages!.map((x) => x)),
        "ProductPincodes": List<dynamic>.from(productPincodes!.map((x) => x)),
        "Vendor": vendor,
        "ProductViews": List<dynamic>.from(productViews!.map((x) => x)),
        "Reviews": List<dynamic>.from(reviews!.map((x) => x)),
        "SaveForLaters": List<dynamic>.from(saveForLaters!.map((x) => x)),
        "WishLists": List<dynamic>.from(wishLists!.map((x) => x)),
      };
}

// To parse this JSON data, do
//
//     final topProduct = topProductFromJson(jsonString);

// import 'package:hive/hive.dart';
// import 'package:meta/meta.dart';
// import 'dart:convert';

// TopProduct topProductFromJson(String str) =>
//     TopProduct.fromJson(json.decode(str));

// String topProductToJson(TopProduct data) => json.encode(data.toJson());

// class TopProduct {
//   TopProduct({
//     @required this.message,
//     @required this.data,
//   });

//   String? message;
//   List<ProductDatum>? data;

//   factory TopProduct.fromJson(Map<String, dynamic> json) => TopProduct(
//         message: json["Message"],
//         data: List<ProductDatum>.from(
//             json["Data"].map((x) => ProductDatum.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "Message": message,
//         "Data": List<dynamic>.from(data!.map((x) => x.toJson())),
//       };
// }

// class ProductDatum {
//   ProductDatum({
//     @required this.venderName,
//     @required this.venderDetails,
//     @required this.vendorUrlKey,
//     @required this.catName,
//     @required this.imageUrl,
//     @required this.catUrlKey,
//     @required this.catId,
//     @required this.cartItemQty,
//     @required this.isWishlisted,
//     @required this.isCarted,
//     @required this.isAvailPincode,
//     @required this.isReviewCount,
//     @required this.reviewstatus,
//     @required this.isReviewAvgrating,
//     @required this.productId,
//     @required this.vendorid,
//     @required this.prDate,
//     @required this.actDate,
//     @required this.prName,
//     @required this.sku,
//     @required this.unitPrice,
//     @required this.description,
//     @required this.shortDescription,
//     @required this.urlKey,
//     @required this.metaTitle,
//     @required this.metaKeywords,
//     @required this.metaDescription,
//     @required this.status,
//     @required this.qoh,
//     @required this.rank,
//     @required this.availableFrom,
//     @required this.availableTo,
//     @required this.suspendedDate,
//     @required this.newDate,
//     @required this.delDate,
//     @required this.maxQtyInOrders,
//     @required this.soldQty,
//     @required this.stockAvailability,
//     @required this.backOrders,
//     @required this.rol,
//     @required this.roq,
//     @required this.parentId,
//     @required this.specialPrice,
//     @required this.attributeSetId,
//     @required this.pincodeSetId,
//     @required this.prWeight,
//     @required this.taxClassId,
//     @required this.cessAmount,
//     @required this.featuredImage,
//     @required this.avgRating,
//     @required this.reviewCount,
//     @required this.dealFrom,
//     @required this.dealTo,
//     @required this.erpRefNo,
//     @required this.productType,
//     @required this.variationJson,
//     @required this.bsl,
//     @required this.prWeightMfactor,
//     @required this.markupPercentage,
//     @required this.productLabel,
//     @required this.backgroundColorCode,
//     @required this.isNew,
//     @required this.costPrice,
//     @required this.erpCat,
//     @required this.prwmf,
//     @required this.cartItems,
//     @required this.keywords,
//     @required this.taxClass,
//     @required this.productCategories,
//     @required this.productImages,
//     @required this.productPincodes,
//     @required this.vendor,
//     @required this.productViews,
//     @required this.reviews,
//     @required this.saveForLaters,
//     @required this.wishLists,
//   });

//   dynamic venderName;

//   dynamic venderDetails;

//   dynamic vendorUrlKey;

//   dynamic catName;

//   String? imageUrl;

//   dynamic catUrlKey;

//   int? catId;

//   int? cartItemQty;

//   bool? isWishlisted;

//   bool? isCarted;

//   bool? isAvailPincode;

//   int? isReviewCount;

//   int? reviewstatus;

//   double? isReviewAvgrating;

//   int? productId;

//   int? vendorid;

//   DateTime? prDate;

//   dynamic? actDate;

//   String? prName;

//   String? sku;

//   double? unitPrice;

//   dynamic description;

//   dynamic shortDescription;

//   String? urlKey;

//   String? metaTitle;

//   String? metaKeywords;

//   String? metaDescription;

//   bool? status;

//   double? qoh;

//   int? rank;

//   dynamic availableFrom;

//   dynamic availableTo;

//   dynamic suspendedDate;

//   dynamic newDate;

//   dynamic delDate;

//   double? maxQtyInOrders;

//   double? soldQty;

//   String? stockAvailability;

//   bool? backOrders;

//   double? rol;

//   double? roq;

//   dynamic parentId;

//   double? specialPrice;

//   dynamic attributeSetId;

//   dynamic pincodeSetId;

//   String? prWeight;

//   dynamic taxClassId;

//   dynamic cessAmount;

//   dynamic featuredImage;

//   dynamic avgRating;

//   dynamic reviewCount;

//   DateTime? dealFrom;

//   DateTime? dealTo;

//   dynamic erpRefNo;

//   dynamic productType;

//   dynamic variationJson;

//   dynamic bsl;

//   dynamic prWeightMfactor;

//   dynamic markupPercentage;

//   String? productLabel;

//   String? backgroundColorCode;

//   dynamic isNew;

//   dynamic costPrice;

//   dynamic erpCat;

//   dynamic prwmf;

//   List<dynamic>? cartItems;

//   List<dynamic>? keywords;

//   dynamic taxClass;

//   List<dynamic>? productCategories;

//   List<dynamic>? productImages;

//   List<dynamic>? productPincodes;

//   dynamic vendor;

//   List<dynamic>? productViews;

//   List<dynamic>? reviews;

//   List<dynamic>? saveForLaters;

//   List<dynamic>? wishLists;

//   factory ProductDatum.fromJson(Map<String, dynamic> json) => ProductDatum(
//         venderName: json["venderName"],
//         venderDetails: json["venderDetails"],
//         vendorUrlKey: json["vendorUrlKey"],
//         catName: json["catName"],
//         imageUrl: json["imageUrl"],
//         catUrlKey: json["catUrlKey"],
//         catId: json["catId"],
//         cartItemQty: json["CartItemQty"],
//         isWishlisted: json["IsWishlisted"],
//         isCarted: json["IsCarted"],
//         isAvailPincode: json["IsAvailPincode"],
//         isReviewCount: json["IsReviewCount"],
//         reviewstatus: json["Reviewstatus"],
//         isReviewAvgrating: json["IsReviewAvgrating"],
//         productId: json["productId"],
//         vendorid: json["vendorid"],
//         prDate: DateTime.parse(json["prDate"]),
//         actDate: json["actDate"],
//         prName: json["prName"],
//         sku: json["sku"],
//         unitPrice: json["unitPrice"],
//         description: json["description"],
//         shortDescription: json["shortDescription"],
//         urlKey: json["urlKey"],
//         metaTitle: json["metaTitle"],
//         metaKeywords: json["metaKeywords"],
//         metaDescription: json["metaDescription"],
//         status: json["status"],
//         qoh: json["qoh"],
//         rank: json["rank"],
//         availableFrom: json["availableFrom"],
//         availableTo: json["availableTo"],
//         suspendedDate: json["suspendedDate"],
//         newDate: json["newDate"],
//         delDate: json["delDate"],
//         maxQtyInOrders: json["maxQtyInOrders"],
//         soldQty: json["soldQty"],
//         stockAvailability: json["stockAvailability"],
//         backOrders: json["backOrders"],
//         rol: json["rol"],
//         roq: json["roq"],
//         parentId: json["parentId"],
//         specialPrice: json["specialPrice"],
//         attributeSetId: json["attributeSetId"],
//         pincodeSetId: json["pincodeSetId"],
//         prWeight: json["prWeight"],
//         taxClassId: json["taxClassId"],
//         cessAmount: json["cessAmount"],
//         featuredImage: json["featuredImage"],
//         avgRating: json["avgRating"],
//         reviewCount: json["reviewCount"],
//         dealFrom:
//             json["dealFrom"] == null ? null : DateTime.parse(json["dealFrom"]),
//         dealTo: json["dealTo"] == null ? null : DateTime.parse(json["dealTo"]),
//         erpRefNo: json["erpRefNo"],
//         productType: json["productType"],
//         variationJson: json["variationJson"],
//         bsl: json["bsl"],
//         prWeightMfactor: json["prWeightMfactor"],
//         markupPercentage: json["markupPercentage"],
//         productLabel: json["productLabel"],
//         backgroundColorCode: json["backgroundColorCode"],
//         isNew: json["isNew"],
//         costPrice: json["costPrice"],
//         erpCat: json["erpCat"],
//         prwmf: json["prwmf"],
//         cartItems: List<dynamic>.from(json["CartItems"].map((x) => x)),
//         keywords: List<dynamic>.from(json["Keywords"].map((x) => x)),
//         taxClass: json["TaxClass"],
//         productCategories:
//             List<dynamic>.from(json["ProductCategories"].map((x) => x)),
//         productImages: List<dynamic>.from(json["ProductImages"].map((x) => x)),
//         productPincodes:
//             List<dynamic>.from(json["ProductPincodes"].map((x) => x)),
//         vendor: json["Vendor"],
//         productViews: List<dynamic>.from(json["ProductViews"].map((x) => x)),
//         reviews: List<dynamic>.from(json["Reviews"].map((x) => x)),
//         saveForLaters: List<dynamic>.from(json["SaveForLaters"].map((x) => x)),
//         wishLists: List<dynamic>.from(json["WishLists"].map((x) => x)),
//       );

//   Map<String, dynamic> toJson() => {
//         "venderName": venderName,
//         "venderDetails": venderDetails,
//         "vendorUrlKey": vendorUrlKey,
//         "catName": catName,
//         "imageUrl": imageUrl,
//         "catUrlKey": catUrlKey,
//         "catId": catId,
//         "CartItemQty": cartItemQty,
//         "IsWishlisted": isWishlisted,
//         "IsCarted": isCarted,
//         "IsAvailPincode": isAvailPincode,
//         "IsReviewCount": isReviewCount,
//         "Reviewstatus": reviewstatus,
//         "IsReviewAvgrating": isReviewAvgrating,
//         "productId": productId,
//         "vendorid": vendorid,
//         "prDate": prDate!.toIso8601String(),
//         "actDate": actDate,
//         "prName": prName,
//         "sku": sku,
//         "unitPrice": unitPrice,
//         "description": description,
//         "shortDescription": shortDescription,
//         "urlKey": urlKey,
//         "metaTitle": metaTitle,
//         "metaKeywords": metaKeywords,
//         "metaDescription": metaDescription,
//         "status": status,
//         "qoh": qoh,
//         "rank": rank,
//         "availableFrom": availableFrom,
//         "availableTo": availableTo,
//         "suspendedDate": suspendedDate,
//         "newDate": newDate,
//         "delDate": delDate,
//         "maxQtyInOrders": maxQtyInOrders,
//         "soldQty": soldQty,
//         "stockAvailability": stockAvailability,
//         "backOrders": backOrders,
//         "rol": rol,
//         "roq": roq,
//         "parentId": parentId,
//         "specialPrice": specialPrice,
//         "attributeSetId": attributeSetId,
//         "pincodeSetId": pincodeSetId,
//         "prWeight": prWeight,
//         "taxClassId": taxClassId,
//         "cessAmount": cessAmount,
//         "featuredImage": featuredImage,
//         "avgRating": avgRating,
//         "reviewCount": reviewCount,
//         "dealFrom": dealFrom == null ? null : dealFrom!.toIso8601String(),
//         "dealTo": dealTo == null ? null : dealTo!.toIso8601String(),
//         "erpRefNo": erpRefNo,
//         "productType": productType,
//         "variationJson": variationJson,
//         "bsl": bsl,
//         "prWeightMfactor": prWeightMfactor,
//         "markupPercentage": markupPercentage,
//         "productLabel": productLabel,
//         "backgroundColorCode": backgroundColorCode,
//         "isNew": isNew,
//         "costPrice": costPrice,
//         "erpCat": erpCat,
//         "prwmf": prwmf,
//         "CartItems": List<dynamic>.from(cartItems!.map((x) => x)),
//         "Keywords": List<dynamic>.from(keywords!.map((x) => x)),
//         "TaxClass": taxClass,
//         "ProductCategories":
//             List<dynamic>.from(productCategories!.map((x) => x)),
//         "ProductImages": List<dynamic>.from(productImages!.map((x) => x)),
//         "ProductPincodes": List<dynamic>.from(productPincodes!.map((x) => x)),
//         "Vendor": vendor,
//         "ProductViews": List<dynamic>.from(productViews!.map((x) => x)),
//         "Reviews": List<dynamic>.from(reviews!.map((x) => x)),
//         "SaveForLaters": List<dynamic>.from(saveForLaters!.map((x) => x)),
//         "WishLists": List<dynamic>.from(wishLists!.map((x) => x)),
//       };
// }
