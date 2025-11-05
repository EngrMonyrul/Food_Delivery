// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coupon _$CouponFromJson(Map<String, dynamic> json) => Coupon(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  code: json['code'] as String?,
  startDate: json['start_date'] == null
      ? null
      : DateTime.parse(json['start_date'] as String),
  expireDate: json['expire_date'] == null
      ? null
      : DateTime.parse(json['expire_date'] as String),
  minPurchase: (json['min_purchase'] as num?)?.toInt(),
  maxDiscount: (json['max_discount'] as num?)?.toInt(),
  discount: (json['discount'] as num?)?.toInt(),
  discountType: json['discount_type'] as String?,
  couponType: json['coupon_type'] as String?,
  limit: (json['limit'] as num?)?.toInt(),
  status: (json['status'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  data: json['data'] as String?,
  totalUses: (json['total_uses'] as num?)?.toInt(),
  createdBy: json['created_by'] as String?,
  customerId: json['customer_id'] as String?,
  slug: json['slug'],
  restaurantId: (json['restaurant_id'] as num?)?.toInt(),
  translations: (json['translations'] as List<dynamic>?)
      ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CouponToJson(Coupon instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'code': instance.code,
  'start_date': instance.startDate?.toIso8601String(),
  'expire_date': instance.expireDate?.toIso8601String(),
  'min_purchase': instance.minPurchase,
  'max_discount': instance.maxDiscount,
  'discount': instance.discount,
  'discount_type': instance.discountType,
  'coupon_type': instance.couponType,
  'limit': instance.limit,
  'status': instance.status,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'data': instance.data,
  'total_uses': instance.totalUses,
  'created_by': instance.createdBy,
  'customer_id': instance.customerId,
  'slug': instance.slug,
  'restaurant_id': instance.restaurantId,
  'translations': instance.translations,
};
