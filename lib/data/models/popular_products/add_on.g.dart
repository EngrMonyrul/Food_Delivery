// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_on.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOn _$AddOnFromJson(Map<String, dynamic> json) => AddOn(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  price: (json['price'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  restaurantId: (json['restaurant_id'] as num?)?.toInt(),
  status: (json['status'] as num?)?.toInt(),
  stockType: json['stock_type'] as String?,
  addonStock: (json['addon_stock'] as num?)?.toInt(),
  sellCount: (json['sell_count'] as num?)?.toInt(),
  addonCategoryId: (json['addon_category_id'] as num?)?.toInt(),
  taxIds: json['tax_ids'] as List<dynamic>?,
  translations: (json['translations'] as List<dynamic>?)
      ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AddOnToJson(AddOn instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'price': instance.price,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'restaurant_id': instance.restaurantId,
  'status': instance.status,
  'stock_type': instance.stockType,
  'addon_stock': instance.addonStock,
  'sell_count': instance.sellCount,
  'addon_category_id': instance.addonCategoryId,
  'tax_ids': instance.taxIds,
  'translations': instance.translations,
};
