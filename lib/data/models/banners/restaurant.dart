import 'package:food_resturant_app/data/models/banners/schedule.dart';
import 'package:food_resturant_app/data/models/banners/storage.dart';
import 'package:food_resturant_app/data/models/banners/translation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'coupon.dart';
import 'cuisine.dart';
import 'food.dart';

part 'restaurant.g.dart';

@JsonSerializable()
class Restaurant {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "phone")
  final String? phone;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "logo")
  final String? logo;
  @JsonKey(name: "latitude")
  final String? latitude;
  @JsonKey(name: "longitude")
  final String? longitude;
  @JsonKey(name: "address")
  final String? address;
  @JsonKey(name: "footer_text")
  final dynamic footerText;
  @JsonKey(name: "minimum_order")
  final int? minimumOrder;
  @JsonKey(name: "comission")
  final int? comission;
  @JsonKey(name: "schedule_order")
  final bool? scheduleOrder;
  @JsonKey(name: "opening_time")
  final dynamic openingTime;
  @JsonKey(name: "closeing_time")
  final dynamic closeingTime;
  @JsonKey(name: "status")
  final int? status;
  @JsonKey(name: "vendor_id")
  final int? vendorId;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "free_delivery")
  final bool? freeDelivery;
  @JsonKey(name: "cover_photo")
  final String? coverPhoto;
  @JsonKey(name: "delivery")
  final bool? delivery;
  @JsonKey(name: "take_away")
  final bool? takeAway;
  @JsonKey(name: "food_section")
  final bool? foodSection;
  @JsonKey(name: "tax")
  final double? tax;
  @JsonKey(name: "zone_id")
  final int? zoneId;
  @JsonKey(name: "reviews_section")
  final bool? reviewsSection;
  @JsonKey(name: "active")
  final bool? active;
  @JsonKey(name: "off_day")
  final String? offDay;
  @JsonKey(name: "self_delivery_system")
  final int? selfDeliverySystem;
  @JsonKey(name: "pos_system")
  final bool? posSystem;
  @JsonKey(name: "minimum_shipping_charge")
  final int? minimumShippingCharge;
  @JsonKey(name: "delivery_time")
  final String? deliveryTime;
  @JsonKey(name: "veg")
  final int? veg;
  @JsonKey(name: "non_veg")
  final int? nonVeg;
  @JsonKey(name: "order_count")
  final int? orderCount;
  @JsonKey(name: "total_order")
  final int? totalOrder;
  @JsonKey(name: "per_km_shipping_charge")
  final int? perKmShippingCharge;
  @JsonKey(name: "restaurant_model")
  final String? restaurantModel;
  @JsonKey(name: "maximum_shipping_charge")
  final dynamic maximumShippingCharge;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "order_subscription_active")
  final bool? orderSubscriptionActive;
  @JsonKey(name: "cutlery")
  final bool? cutlery;
  @JsonKey(name: "meta_title")
  final String? metaTitle;
  @JsonKey(name: "meta_description")
  final String? metaDescription;
  @JsonKey(name: "meta_image")
  final String? metaImage;
  @JsonKey(name: "announcement")
  final int? announcement;
  @JsonKey(name: "announcement_message")
  final String? announcementMessage;
  @JsonKey(name: "qr_code")
  final dynamic qrCode;
  @JsonKey(name: "additional_data")
  final dynamic additionalData;
  @JsonKey(name: "additional_documents")
  final String? additionalDocuments;
  @JsonKey(name: "package_id")
  final dynamic packageId;
  @JsonKey(name: "tin")
  final String? tin;
  @JsonKey(name: "tin_expire_date")
  final DateTime? tinExpireDate;
  @JsonKey(name: "tin_certificate_image")
  final String? tinCertificateImage;
  @JsonKey(name: "restaurant_status")
  final int? restaurantStatus;
  @JsonKey(name: "foods")
  final List<Food>? foods;
  @JsonKey(name: "coupons")
  final List<Coupon>? coupons;
  @JsonKey(name: "cuisine")
  final List<Cuisine>? cuisine;
  @JsonKey(name: "ratings")
  final List<int>? ratings;
  @JsonKey(name: "avg_rating")
  final double? avgRating;
  @JsonKey(name: "rating_count")
  final int? ratingCount;
  @JsonKey(name: "positive_rating")
  final int? positiveRating;
  @JsonKey(name: "price_starts_from")
  final int? priceStartsFrom;
  @JsonKey(name: "customer_order_date")
  final int? customerOrderDate;
  @JsonKey(name: "customer_date_order_sratus")
  final bool? customerDateOrderSratus;
  @JsonKey(name: "instant_order")
  final bool? instantOrder;
  @JsonKey(name: "halal_tag_status")
  final bool? halalTagStatus;
  @JsonKey(name: "is_extra_packaging_active")
  final bool? isExtraPackagingActive;
  @JsonKey(name: "extra_packaging_status")
  final bool? extraPackagingStatus;
  @JsonKey(name: "extra_packaging_amount")
  final int? extraPackagingAmount;
  @JsonKey(name: "delivery_fee")
  final String? deliveryFee;
  @JsonKey(name: "current_opening_time")
  final String? currentOpeningTime;
  @JsonKey(name: "is_dine_in_active")
  final bool? isDineInActive;
  @JsonKey(name: "schedule_advance_dine_in_booking_duration")
  final int? scheduleAdvanceDineInBookingDuration;
  @JsonKey(name: "schedule_advance_dine_in_booking_duration_time_format")
  final String? scheduleAdvanceDineInBookingDurationTimeFormat;
  @JsonKey(name: "tags")
  final List<dynamic>? tags;
  @JsonKey(name: "can_edit_order")
  final bool? canEditOrder;
  @JsonKey(name: "characteristics")
  final List<String>? characteristics;
  @JsonKey(name: "gst_status")
  final bool? gstStatus;
  @JsonKey(name: "gst_code")
  final String? gstCode;
  @JsonKey(name: "free_delivery_distance_status")
  final bool? freeDeliveryDistanceStatus;
  @JsonKey(name: "free_delivery_distance_value")
  final String? freeDeliveryDistanceValue;
  @JsonKey(name: "logo_full_url")
  final String? logoFullUrl;
  @JsonKey(name: "cover_photo_full_url")
  final String? coverPhotoFullUrl;
  @JsonKey(name: "meta_image_full_url")
  final String? metaImageFullUrl;
  @JsonKey(name: "tin_certificate_image_full_url")
  final String? tinCertificateImageFullUrl;
  @JsonKey(name: "translations")
  final List<Translation>? translations;
  @JsonKey(name: "storage")
  final List<Storage>? storage;
  @JsonKey(name: "schedules")
  final List<Schedule>? schedules;

  Restaurant({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.logo,
    this.latitude,
    this.longitude,
    this.address,
    this.footerText,
    this.minimumOrder,
    this.comission,
    this.scheduleOrder,
    this.openingTime,
    this.closeingTime,
    this.status,
    this.vendorId,
    this.createdAt,
    this.updatedAt,
    this.freeDelivery,
    this.coverPhoto,
    this.delivery,
    this.takeAway,
    this.foodSection,
    this.tax,
    this.zoneId,
    this.reviewsSection,
    this.active,
    this.offDay,
    this.selfDeliverySystem,
    this.posSystem,
    this.minimumShippingCharge,
    this.deliveryTime,
    this.veg,
    this.nonVeg,
    this.orderCount,
    this.totalOrder,
    this.perKmShippingCharge,
    this.restaurantModel,
    this.maximumShippingCharge,
    this.slug,
    this.orderSubscriptionActive,
    this.cutlery,
    this.metaTitle,
    this.metaDescription,
    this.metaImage,
    this.announcement,
    this.announcementMessage,
    this.qrCode,
    this.additionalData,
    this.additionalDocuments,
    this.packageId,
    this.tin,
    this.tinExpireDate,
    this.tinCertificateImage,
    this.restaurantStatus,
    this.foods,
    this.coupons,
    this.cuisine,
    this.ratings,
    this.avgRating,
    this.ratingCount,
    this.positiveRating,
    this.priceStartsFrom,
    this.customerOrderDate,
    this.customerDateOrderSratus,
    this.instantOrder,
    this.halalTagStatus,
    this.isExtraPackagingActive,
    this.extraPackagingStatus,
    this.extraPackagingAmount,
    this.deliveryFee,
    this.currentOpeningTime,
    this.isDineInActive,
    this.scheduleAdvanceDineInBookingDuration,
    this.scheduleAdvanceDineInBookingDurationTimeFormat,
    this.tags,
    this.canEditOrder,
    this.characteristics,
    this.gstStatus,
    this.gstCode,
    this.freeDeliveryDistanceStatus,
    this.freeDeliveryDistanceValue,
    this.logoFullUrl,
    this.coverPhotoFullUrl,
    this.metaImageFullUrl,
    this.tinCertificateImageFullUrl,
    this.translations,
    this.storage,
    this.schedules,
  });

  Restaurant copyWith({
    int? id,
    String? name,
    String? phone,
    String? email,
    String? logo,
    String? latitude,
    String? longitude,
    String? address,
    dynamic footerText,
    int? minimumOrder,
    int? comission,
    bool? scheduleOrder,
    dynamic openingTime,
    dynamic closeingTime,
    int? status,
    int? vendorId,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? freeDelivery,
    String? coverPhoto,
    bool? delivery,
    bool? takeAway,
    bool? foodSection,
    double? tax,
    int? zoneId,
    bool? reviewsSection,
    bool? active,
    String? offDay,
    int? selfDeliverySystem,
    bool? posSystem,
    int? minimumShippingCharge,
    String? deliveryTime,
    int? veg,
    int? nonVeg,
    int? orderCount,
    int? totalOrder,
    int? perKmShippingCharge,
    String? restaurantModel,
    dynamic maximumShippingCharge,
    String? slug,
    bool? orderSubscriptionActive,
    bool? cutlery,
    String? metaTitle,
    String? metaDescription,
    String? metaImage,
    int? announcement,
    String? announcementMessage,
    dynamic qrCode,
    dynamic additionalData,
    String? additionalDocuments,
    dynamic packageId,
    String? tin,
    DateTime? tinExpireDate,
    String? tinCertificateImage,
    int? restaurantStatus,
    List<Food>? foods,
    List<Coupon>? coupons,
    List<Cuisine>? cuisine,
    List<int>? ratings,
    double? avgRating,
    int? ratingCount,
    int? positiveRating,
    int? priceStartsFrom,
    int? customerOrderDate,
    bool? customerDateOrderSratus,
    bool? instantOrder,
    bool? halalTagStatus,
    bool? isExtraPackagingActive,
    bool? extraPackagingStatus,
    int? extraPackagingAmount,
    String? deliveryFee,
    String? currentOpeningTime,
    bool? isDineInActive,
    int? scheduleAdvanceDineInBookingDuration,
    String? scheduleAdvanceDineInBookingDurationTimeFormat,
    List<dynamic>? tags,
    bool? canEditOrder,
    List<String>? characteristics,
    bool? gstStatus,
    String? gstCode,
    bool? freeDeliveryDistanceStatus,
    String? freeDeliveryDistanceValue,
    String? logoFullUrl,
    String? coverPhotoFullUrl,
    String? metaImageFullUrl,
    String? tinCertificateImageFullUrl,
    List<Translation>? translations,
    List<Storage>? storage,
    List<Schedule>? schedules,
  }) => Restaurant(
    id: id ?? this.id,
    name: name ?? this.name,
    phone: phone ?? this.phone,
    email: email ?? this.email,
    logo: logo ?? this.logo,
    latitude: latitude ?? this.latitude,
    longitude: longitude ?? this.longitude,
    address: address ?? this.address,
    footerText: footerText ?? this.footerText,
    minimumOrder: minimumOrder ?? this.minimumOrder,
    comission: comission ?? this.comission,
    scheduleOrder: scheduleOrder ?? this.scheduleOrder,
    openingTime: openingTime ?? this.openingTime,
    closeingTime: closeingTime ?? this.closeingTime,
    status: status ?? this.status,
    vendorId: vendorId ?? this.vendorId,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    freeDelivery: freeDelivery ?? this.freeDelivery,
    coverPhoto: coverPhoto ?? this.coverPhoto,
    delivery: delivery ?? this.delivery,
    takeAway: takeAway ?? this.takeAway,
    foodSection: foodSection ?? this.foodSection,
    tax: tax ?? this.tax,
    zoneId: zoneId ?? this.zoneId,
    reviewsSection: reviewsSection ?? this.reviewsSection,
    active: active ?? this.active,
    offDay: offDay ?? this.offDay,
    selfDeliverySystem: selfDeliverySystem ?? this.selfDeliverySystem,
    posSystem: posSystem ?? this.posSystem,
    minimumShippingCharge: minimumShippingCharge ?? this.minimumShippingCharge,
    deliveryTime: deliveryTime ?? this.deliveryTime,
    veg: veg ?? this.veg,
    nonVeg: nonVeg ?? this.nonVeg,
    orderCount: orderCount ?? this.orderCount,
    totalOrder: totalOrder ?? this.totalOrder,
    perKmShippingCharge: perKmShippingCharge ?? this.perKmShippingCharge,
    restaurantModel: restaurantModel ?? this.restaurantModel,
    maximumShippingCharge: maximumShippingCharge ?? this.maximumShippingCharge,
    slug: slug ?? this.slug,
    orderSubscriptionActive:
        orderSubscriptionActive ?? this.orderSubscriptionActive,
    cutlery: cutlery ?? this.cutlery,
    metaTitle: metaTitle ?? this.metaTitle,
    metaDescription: metaDescription ?? this.metaDescription,
    metaImage: metaImage ?? this.metaImage,
    announcement: announcement ?? this.announcement,
    announcementMessage: announcementMessage ?? this.announcementMessage,
    qrCode: qrCode ?? this.qrCode,
    additionalData: additionalData ?? this.additionalData,
    additionalDocuments: additionalDocuments ?? this.additionalDocuments,
    packageId: packageId ?? this.packageId,
    tin: tin ?? this.tin,
    tinExpireDate: tinExpireDate ?? this.tinExpireDate,
    tinCertificateImage: tinCertificateImage ?? this.tinCertificateImage,
    restaurantStatus: restaurantStatus ?? this.restaurantStatus,
    foods: foods ?? this.foods,
    coupons: coupons ?? this.coupons,
    cuisine: cuisine ?? this.cuisine,
    ratings: ratings ?? this.ratings,
    avgRating: avgRating ?? this.avgRating,
    ratingCount: ratingCount ?? this.ratingCount,
    positiveRating: positiveRating ?? this.positiveRating,
    priceStartsFrom: priceStartsFrom ?? this.priceStartsFrom,
    customerOrderDate: customerOrderDate ?? this.customerOrderDate,
    customerDateOrderSratus:
        customerDateOrderSratus ?? this.customerDateOrderSratus,
    instantOrder: instantOrder ?? this.instantOrder,
    halalTagStatus: halalTagStatus ?? this.halalTagStatus,
    isExtraPackagingActive:
        isExtraPackagingActive ?? this.isExtraPackagingActive,
    extraPackagingStatus: extraPackagingStatus ?? this.extraPackagingStatus,
    extraPackagingAmount: extraPackagingAmount ?? this.extraPackagingAmount,
    deliveryFee: deliveryFee ?? this.deliveryFee,
    currentOpeningTime: currentOpeningTime ?? this.currentOpeningTime,
    isDineInActive: isDineInActive ?? this.isDineInActive,
    scheduleAdvanceDineInBookingDuration:
        scheduleAdvanceDineInBookingDuration ??
        this.scheduleAdvanceDineInBookingDuration,
    scheduleAdvanceDineInBookingDurationTimeFormat:
        scheduleAdvanceDineInBookingDurationTimeFormat ??
        this.scheduleAdvanceDineInBookingDurationTimeFormat,
    tags: tags ?? this.tags,
    canEditOrder: canEditOrder ?? this.canEditOrder,
    characteristics: characteristics ?? this.characteristics,
    gstStatus: gstStatus ?? this.gstStatus,
    gstCode: gstCode ?? this.gstCode,
    freeDeliveryDistanceStatus:
        freeDeliveryDistanceStatus ?? this.freeDeliveryDistanceStatus,
    freeDeliveryDistanceValue:
        freeDeliveryDistanceValue ?? this.freeDeliveryDistanceValue,
    logoFullUrl: logoFullUrl ?? this.logoFullUrl,
    coverPhotoFullUrl: coverPhotoFullUrl ?? this.coverPhotoFullUrl,
    metaImageFullUrl: metaImageFullUrl ?? this.metaImageFullUrl,
    tinCertificateImageFullUrl:
        tinCertificateImageFullUrl ?? this.tinCertificateImageFullUrl,
    translations: translations ?? this.translations,
    storage: storage ?? this.storage,
    schedules: schedules ?? this.schedules,
  );

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantToJson(this);
}
