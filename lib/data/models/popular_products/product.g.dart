// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  image: json['image'] as String?,
  categoryId: (json['category_id'] as num?)?.toInt(),
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
  availableTimeStarts: json['available_time_starts'] as String?,
  availableTimeEnds: json['available_time_ends'] as String?,
  veg: (json['veg'] as num?)?.toInt(),
  status: (json['status'] as num?)?.toInt(),
  restaurantId: (json['restaurant_id'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  orderCount: (json['order_count'] as num?)?.toInt(),
  avgRating: (json['avg_rating'] as num?)?.toDouble(),
  ratingCount: (json['rating_count'] as num?)?.toInt(),
  recommended: (json['recommended'] as num?)?.toInt(),
  slug: json['slug'] as String?,
  maximumCartQuantity: json['maximum_cart_quantity'],
  isHalal: (json['is_halal'] as num?)?.toInt(),
  itemStock: (json['item_stock'] as num?)?.toInt(),
  sellCount: (json['sell_count'] as num?)?.toInt(),
  stockType: json['stock_type'] as String?,
  tempAvailable: (json['temp_available'] as num?)?.toInt(),
  open: (json['open'] as num?)?.toInt(),
  reviewsCount: (json['reviews_count'] as num?)?.toInt(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
      .toList(),
  restaurantName: json['restaurant_name'] as String?,
  restaurantStatus: (json['restaurant_status'] as num?)?.toInt(),
  restaurantDiscount: (json['restaurant_discount'] as num?)?.toInt(),
  restaurantOpeningTime: json['restaurant_opening_time'] as String?,
  restaurantClosingTime: json['restaurant_closing_time'] as String?,
  scheduleOrder: json['schedule_order'] as bool?,
  minDeliveryTime: (json['min_delivery_time'] as num?)?.toInt(),
  maxDeliveryTime: (json['max_delivery_time'] as num?)?.toInt(),
  freeDelivery: (json['free_delivery'] as num?)?.toInt(),
  halalTagStatus: (json['halal_tag_status'] as num?)?.toInt(),
  nutritionsName: (json['nutritions_name'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  allergiesName: (json['allergies_name'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  cuisines: (json['cuisines'] as List<dynamic>?)
      ?.map((e) => Cuisine.fromJson(e as Map<String, dynamic>))
      .toList(),
  taxData: json['tax_data'] as List<dynamic>?,
  imageFullUrl: json['image_full_url'] as String?,
  storage: (json['storage'] as List<dynamic>?)
      ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
      .toList(),
  translations: (json['translations'] as List<dynamic>?)
      ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
      .toList(),
  nutritions: (json['nutritions'] as List<dynamic>?)
      ?.map((e) => Nutrition.fromJson(e as Map<String, dynamic>))
      .toList(),
  allergies: (json['allergies'] as List<dynamic>?)
      ?.map((e) => Allergy.fromJson(e as Map<String, dynamic>))
      .toList(),
  newVariations: json['new_variations'] as List<dynamic>?,
);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'image': instance.image,
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
  'available_time_starts': instance.availableTimeStarts,
  'available_time_ends': instance.availableTimeEnds,
  'veg': instance.veg,
  'status': instance.status,
  'restaurant_id': instance.restaurantId,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'order_count': instance.orderCount,
  'avg_rating': instance.avgRating,
  'rating_count': instance.ratingCount,
  'recommended': instance.recommended,
  'slug': instance.slug,
  'maximum_cart_quantity': instance.maximumCartQuantity,
  'is_halal': instance.isHalal,
  'item_stock': instance.itemStock,
  'sell_count': instance.sellCount,
  'stock_type': instance.stockType,
  'temp_available': instance.tempAvailable,
  'open': instance.open,
  'reviews_count': instance.reviewsCount,
  'tags': instance.tags,
  'restaurant_name': instance.restaurantName,
  'restaurant_status': instance.restaurantStatus,
  'restaurant_discount': instance.restaurantDiscount,
  'restaurant_opening_time': instance.restaurantOpeningTime,
  'restaurant_closing_time': instance.restaurantClosingTime,
  'schedule_order': instance.scheduleOrder,
  'min_delivery_time': instance.minDeliveryTime,
  'max_delivery_time': instance.maxDeliveryTime,
  'free_delivery': instance.freeDelivery,
  'halal_tag_status': instance.halalTagStatus,
  'nutritions_name': instance.nutritionsName,
  'allergies_name': instance.allergiesName,
  'cuisines': instance.cuisines,
  'tax_data': instance.taxData,
  'image_full_url': instance.imageFullUrl,
  'storage': instance.storage,
  'translations': instance.translations,
  'nutritions': instance.nutritions,
  'allergies': instance.allergies,
  'new_variations': instance.newVariations,
};
