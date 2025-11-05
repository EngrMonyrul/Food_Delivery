// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Categories _$CategoriesFromJson(Map<String, dynamic> json) => Categories(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  image: json['image'] as String?,
  parentId: (json['parent_id'] as num?)?.toInt(),
  position: (json['position'] as num?)?.toInt(),
  status: (json['status'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  priority: (json['priority'] as num?)?.toInt(),
  slug: json['slug'] as String?,
  productsCount: (json['products_count'] as num?)?.toInt(),
  childesCount: (json['childes_count'] as num?)?.toInt(),
  orderCount: json['order_count'],
  imageFullUrl: json['image_full_url'] as String?,
  translations: (json['translations'] as List<dynamic>?)
      ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
      .toList(),
  storage: (json['storage'] as List<dynamic>?)
      ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
      .toList(),
  childes: (json['childes'] as List<dynamic>?)
      ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'parent_id': instance.parentId,
      'position': instance.position,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'priority': instance.priority,
      'slug': instance.slug,
      'products_count': instance.productsCount,
      'childes_count': instance.childesCount,
      'order_count': instance.orderCount,
      'image_full_url': instance.imageFullUrl,
      'translations': instance.translations,
      'storage': instance.storage,
      'childes': instance.childes,
    };
