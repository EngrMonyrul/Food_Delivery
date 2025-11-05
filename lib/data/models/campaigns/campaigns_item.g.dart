// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaigns_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CampaignsItem _$CampaignsItemFromJson(Map<String, dynamic> json) =>
    CampaignsItem(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      description: json['description'] as String?,
      status: (json['status'] as num?)?.toInt(),
      adminId: (json['admin_id'] as num?)?.toInt(),
      categoryId: json['category_id'],
      categoryIds: (json['category_ids'] as List<dynamic>?)
          ?.map((e) => CategoryId.fromJson(e as Map<String, dynamic>))
          .toList(),
      variations: (json['variations'] as List<dynamic>?)
          ?.map((e) => Variation.fromJson(e as Map<String, dynamic>))
          .toList(),
      addOns: (json['add_ons'] as List<dynamic>?)
          ?.map((e) => AddOn.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributes: json['attributes'] as String?,
      choiceOptions: json['choice_options'] as String?,
      price: (json['price'] as num?)?.toInt(),
      tax: (json['tax'] as num?)?.toInt(),
      taxType: json['tax_type'] as String?,
      discount: (json['discount'] as num?)?.toInt(),
      discountType: json['discount_type'] as String?,
      restaurantId: (json['restaurant_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      veg: (json['veg'] as num?)?.toInt(),
      slug: json['slug'],
      maximumCartQuantity: (json['maximum_cart_quantity'] as num?)?.toInt(),
      tempAvailable: (json['temp_available'] as num?)?.toInt(),
      open: (json['open'] as num?)?.toInt(),
      name: json['name'] as String?,
      availableTimeStarts: json['available_time_starts'] as String?,
      availableTimeEnds: json['available_time_ends'] as String?,
      availableDateStarts: json['available_date_starts'] == null
          ? null
          : DateTime.parse(json['available_date_starts'] as String),
      availableDateEnds: json['available_date_ends'] == null
          ? null
          : DateTime.parse(json['available_date_ends'] as String),
      recommended: (json['recommended'] as num?)?.toInt(),
      tags: json['tags'],
      restaurantName: json['restaurant_name'] as String?,
      restaurantStatus: (json['restaurant_status'] as num?)?.toInt(),
      restaurantDiscount: (json['restaurant_discount'] as num?)?.toInt(),
      restaurantOpeningTime: json['restaurant_opening_time'] as String?,
      restaurantClosingTime: json['restaurant_closing_time'] as String?,
      scheduleOrder: json['schedule_order'] as bool?,
      ratingCount: (json['rating_count'] as num?)?.toInt(),
      avgRating: (json['avg_rating'] as num?)?.toInt(),
      minDeliveryTime: (json['min_delivery_time'] as num?)?.toInt(),
      maxDeliveryTime: (json['max_delivery_time'] as num?)?.toInt(),
      freeDelivery: (json['free_delivery'] as num?)?.toInt(),
      halalTagStatus: (json['halal_tag_status'] as num?)?.toInt(),
      nutritionsName: json['nutritions_name'],
      allergiesName: json['allergies_name'],
      cuisines: (json['cuisines'] as List<dynamic>?)
          ?.map((e) => Cuisine.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxData: json['tax_data'] as List<dynamic>?,
      imageFullUrl: json['image_full_url'] as String?,
      translations: (json['translations'] as List<dynamic>?)
          ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
          .toList(),
      storage: (json['storage'] as List<dynamic>?)
          ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CampaignsItemToJson(CampaignsItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'description': instance.description,
      'status': instance.status,
      'admin_id': instance.adminId,
      'category_id': instance.categoryId,
      'category_ids': instance.categoryIds,
      'variations': instance.variations,
      'add_ons': instance.addOns,
      'attributes': instance.attributes,
      'choice_options': instance.choiceOptions,
      'price': instance.price,
      'tax': instance.tax,
      'tax_type': instance.taxType,
      'discount': instance.discount,
      'discount_type': instance.discountType,
      'restaurant_id': instance.restaurantId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'veg': instance.veg,
      'slug': instance.slug,
      'maximum_cart_quantity': instance.maximumCartQuantity,
      'temp_available': instance.tempAvailable,
      'open': instance.open,
      'name': instance.name,
      'available_time_starts': instance.availableTimeStarts,
      'available_time_ends': instance.availableTimeEnds,
      'available_date_starts': instance.availableDateStarts?.toIso8601String(),
      'available_date_ends': instance.availableDateEnds?.toIso8601String(),
      'recommended': instance.recommended,
      'tags': instance.tags,
      'restaurant_name': instance.restaurantName,
      'restaurant_status': instance.restaurantStatus,
      'restaurant_discount': instance.restaurantDiscount,
      'restaurant_opening_time': instance.restaurantOpeningTime,
      'restaurant_closing_time': instance.restaurantClosingTime,
      'schedule_order': instance.scheduleOrder,
      'rating_count': instance.ratingCount,
      'avg_rating': instance.avgRating,
      'min_delivery_time': instance.minDeliveryTime,
      'max_delivery_time': instance.maxDeliveryTime,
      'free_delivery': instance.freeDelivery,
      'halal_tag_status': instance.halalTagStatus,
      'nutritions_name': instance.nutritionsName,
      'allergies_name': instance.allergiesName,
      'cuisines': instance.cuisines,
      'tax_data': instance.taxData,
      'image_full_url': instance.imageFullUrl,
      'translations': instance.translations,
      'storage': instance.storage,
    };
