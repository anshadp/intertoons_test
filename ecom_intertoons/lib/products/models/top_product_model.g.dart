// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductDatumAdapter extends TypeAdapter<ProductDatum> {
  @override
  final int typeId = 0;

  @override
  ProductDatum read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductDatum(
      venderName: fields[0] as dynamic,
      venderDetails: fields[1] as dynamic,
      vendorUrlKey: fields[2] as dynamic,
      catName: fields[3] as dynamic,
      imageUrl: fields[4] as String?,
      catUrlKey: fields[6] as dynamic,
      catId: fields[7] as int?,
      cartItemQty: fields[8] as int?,
      isWishlisted: fields[9] as bool?,
      isCarted: fields[10] as bool?,
      isAvailPincode: fields[11] as bool?,
      isReviewCount: fields[12] as int?,
      reviewstatus: fields[13] as int?,
      isReviewAvgrating: fields[14] as double?,
      productId: fields[15] as int?,
      vendorid: fields[16] as int?,
      prDate: fields[17] as DateTime?,
      actDate: fields[18] as dynamic,
      prName: fields[19] as String?,
      sku: fields[20] as String?,
      unitPrice: fields[21] as double?,
      description: fields[22] as dynamic,
      shortDescription: fields[23] as dynamic,
      urlKey: fields[24] as String?,
      metaTitle: fields[25] as String?,
      metaKeywords: fields[26] as String?,
      metaDescription: fields[27] as String?,
      status: fields[28] as bool?,
      qoh: fields[29] as double?,
      rank: fields[30] as int?,
      availableFrom: fields[31] as dynamic,
      availableTo: fields[32] as dynamic,
      suspendedDate: fields[33] as dynamic,
      newDate: fields[34] as dynamic,
      delDate: fields[35] as dynamic,
      maxQtyInOrders: fields[36] as double?,
      soldQty: fields[37] as double?,
      stockAvailability: fields[38] as String?,
      backOrders: fields[39] as bool?,
      rol: fields[40] as double?,
      roq: fields[41] as double?,
      parentId: fields[42] as dynamic,
      specialPrice: fields[43] as double?,
      attributeSetId: fields[44] as dynamic,
      pincodeSetId: fields[45] as dynamic,
      prWeight: fields[46] as String?,
      taxClassId: fields[47] as dynamic,
      cessAmount: fields[48] as dynamic,
      featuredImage: fields[49] as dynamic,
      avgRating: fields[50] as dynamic,
      reviewCount: fields[51] as dynamic,
      dealFrom: fields[52] as DateTime?,
      dealTo: fields[53] as DateTime?,
      erpRefNo: fields[54] as dynamic,
      productType: fields[55] as dynamic,
      variationJson: fields[56] as dynamic,
      bsl: fields[57] as dynamic,
      prWeightMfactor: fields[58] as dynamic,
      markupPercentage: fields[59] as dynamic,
      productLabel: fields[60] as String?,
      backgroundColorCode: fields[61] as String?,
      isNew: fields[62] as dynamic,
      costPrice: fields[63] as dynamic,
      erpCat: fields[64] as dynamic,
      prwmf: fields[65] as dynamic,
      cartItems: (fields[66] as List?)?.cast<dynamic>(),
      keywords: (fields[67] as List?)?.cast<dynamic>(),
      taxClass: fields[68] as dynamic,
      productCategories: (fields[69] as List?)?.cast<dynamic>(),
      productImages: (fields[70] as List?)?.cast<dynamic>(),
      productPincodes: (fields[71] as List?)?.cast<dynamic>(),
      vendor: fields[72] as dynamic,
      productViews: (fields[73] as List?)?.cast<dynamic>(),
      reviews: (fields[74] as List?)?.cast<dynamic>(),
      saveForLaters: (fields[75] as List?)?.cast<dynamic>(),
      wishLists: (fields[76] as List?)?.cast<dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, ProductDatum obj) {
    writer
      ..writeByte(76)
      ..writeByte(0)
      ..write(obj.venderName)
      ..writeByte(1)
      ..write(obj.venderDetails)
      ..writeByte(2)
      ..write(obj.vendorUrlKey)
      ..writeByte(3)
      ..write(obj.catName)
      ..writeByte(4)
      ..write(obj.imageUrl)
      ..writeByte(6)
      ..write(obj.catUrlKey)
      ..writeByte(7)
      ..write(obj.catId)
      ..writeByte(8)
      ..write(obj.cartItemQty)
      ..writeByte(9)
      ..write(obj.isWishlisted)
      ..writeByte(10)
      ..write(obj.isCarted)
      ..writeByte(11)
      ..write(obj.isAvailPincode)
      ..writeByte(12)
      ..write(obj.isReviewCount)
      ..writeByte(13)
      ..write(obj.reviewstatus)
      ..writeByte(14)
      ..write(obj.isReviewAvgrating)
      ..writeByte(15)
      ..write(obj.productId)
      ..writeByte(16)
      ..write(obj.vendorid)
      ..writeByte(17)
      ..write(obj.prDate)
      ..writeByte(18)
      ..write(obj.actDate)
      ..writeByte(19)
      ..write(obj.prName)
      ..writeByte(20)
      ..write(obj.sku)
      ..writeByte(21)
      ..write(obj.unitPrice)
      ..writeByte(22)
      ..write(obj.description)
      ..writeByte(23)
      ..write(obj.shortDescription)
      ..writeByte(24)
      ..write(obj.urlKey)
      ..writeByte(25)
      ..write(obj.metaTitle)
      ..writeByte(26)
      ..write(obj.metaKeywords)
      ..writeByte(27)
      ..write(obj.metaDescription)
      ..writeByte(28)
      ..write(obj.status)
      ..writeByte(29)
      ..write(obj.qoh)
      ..writeByte(30)
      ..write(obj.rank)
      ..writeByte(31)
      ..write(obj.availableFrom)
      ..writeByte(32)
      ..write(obj.availableTo)
      ..writeByte(33)
      ..write(obj.suspendedDate)
      ..writeByte(34)
      ..write(obj.newDate)
      ..writeByte(35)
      ..write(obj.delDate)
      ..writeByte(36)
      ..write(obj.maxQtyInOrders)
      ..writeByte(37)
      ..write(obj.soldQty)
      ..writeByte(38)
      ..write(obj.stockAvailability)
      ..writeByte(39)
      ..write(obj.backOrders)
      ..writeByte(40)
      ..write(obj.rol)
      ..writeByte(41)
      ..write(obj.roq)
      ..writeByte(42)
      ..write(obj.parentId)
      ..writeByte(43)
      ..write(obj.specialPrice)
      ..writeByte(44)
      ..write(obj.attributeSetId)
      ..writeByte(45)
      ..write(obj.pincodeSetId)
      ..writeByte(46)
      ..write(obj.prWeight)
      ..writeByte(47)
      ..write(obj.taxClassId)
      ..writeByte(48)
      ..write(obj.cessAmount)
      ..writeByte(49)
      ..write(obj.featuredImage)
      ..writeByte(50)
      ..write(obj.avgRating)
      ..writeByte(51)
      ..write(obj.reviewCount)
      ..writeByte(52)
      ..write(obj.dealFrom)
      ..writeByte(53)
      ..write(obj.dealTo)
      ..writeByte(54)
      ..write(obj.erpRefNo)
      ..writeByte(55)
      ..write(obj.productType)
      ..writeByte(56)
      ..write(obj.variationJson)
      ..writeByte(57)
      ..write(obj.bsl)
      ..writeByte(58)
      ..write(obj.prWeightMfactor)
      ..writeByte(59)
      ..write(obj.markupPercentage)
      ..writeByte(60)
      ..write(obj.productLabel)
      ..writeByte(61)
      ..write(obj.backgroundColorCode)
      ..writeByte(62)
      ..write(obj.isNew)
      ..writeByte(63)
      ..write(obj.costPrice)
      ..writeByte(64)
      ..write(obj.erpCat)
      ..writeByte(65)
      ..write(obj.prwmf)
      ..writeByte(66)
      ..write(obj.cartItems)
      ..writeByte(67)
      ..write(obj.keywords)
      ..writeByte(68)
      ..write(obj.taxClass)
      ..writeByte(69)
      ..write(obj.productCategories)
      ..writeByte(70)
      ..write(obj.productImages)
      ..writeByte(71)
      ..write(obj.productPincodes)
      ..writeByte(72)
      ..write(obj.vendor)
      ..writeByte(73)
      ..write(obj.productViews)
      ..writeByte(74)
      ..write(obj.reviews)
      ..writeByte(75)
      ..write(obj.saveForLaters)
      ..writeByte(76)
      ..write(obj.wishLists);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductDatumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
