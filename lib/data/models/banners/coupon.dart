import 'package:food_resturant_app/data/models/banners/translation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'coupon.g.dart';

@JsonSerializable()
class Coupon {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "code")
  final String? code;
  @JsonKey(name: "start_date")
  final DateTime? startDate;
  @JsonKey(name: "expire_date")
  final DateTime? expireDate;
  @JsonKey(name: "min_purchase")
  final int? minPurchase;
  @JsonKey(name: "max_discount")
  final int? maxDiscount;
  @JsonKey(name: "discount")
  final int? discount;
  @JsonKey(name: "discount_type")
  final String? discountType;
  @JsonKey(name: "coupon_type")
  final String? couponType;
  @JsonKey(name: "limit")
  final int? limit;
  @JsonKey(name: "status")
  final int? status;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "data")
  final String? data;
  @JsonKey(name: "total_uses")
  final int? totalUses;
  @JsonKey(name: "created_by")
  final String? createdBy;
  @JsonKey(name: "customer_id")
  final String? customerId;
  @JsonKey(name: "slug")
  final dynamic slug;
  @JsonKey(name: "restaurant_id")
  final int? restaurantId;
  @JsonKey(name: "translations")
  final List<Translation>? translations;

  Coupon({
    this.id,
    this.title,
    this.code,
    this.startDate,
    this.expireDate,
    this.minPurchase,
    this.maxDiscount,
    this.discount,
    this.discountType,
    this.couponType,
    this.limit,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.data,
    this.totalUses,
    this.createdBy,
    this.customerId,
    this.slug,
    this.restaurantId,
    this.translations,
  });

  Coupon copyWith({
    int? id,
    String? title,
    String? code,
    DateTime? startDate,
    DateTime? expireDate,
    int? minPurchase,
    int? maxDiscount,
    int? discount,
    String? discountType,
    String? couponType,
    int? limit,
    int? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? data,
    int? totalUses,
    String? createdBy,
    String? customerId,
    dynamic slug,
    int? restaurantId,
    List<Translation>? translations,
  }) => Coupon(
    id: id ?? this.id,
    title: title ?? this.title,
    code: code ?? this.code,
    startDate: startDate ?? this.startDate,
    expireDate: expireDate ?? this.expireDate,
    minPurchase: minPurchase ?? this.minPurchase,
    maxDiscount: maxDiscount ?? this.maxDiscount,
    discount: discount ?? this.discount,
    discountType: discountType ?? this.discountType,
    couponType: couponType ?? this.couponType,
    limit: limit ?? this.limit,
    status: status ?? this.status,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    data: data ?? this.data,
    totalUses: totalUses ?? this.totalUses,
    createdBy: createdBy ?? this.createdBy,
    customerId: customerId ?? this.customerId,
    slug: slug ?? this.slug,
    restaurantId: restaurantId ?? this.restaurantId,
    translations: translations ?? this.translations,
  );

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);

  Map<String, dynamic> toJson() => _$CouponToJson(this);
}
