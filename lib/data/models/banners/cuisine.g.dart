// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cuisine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cuisine _$CuisineFromJson(Map<String, dynamic> json) => Cuisine(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  image: json['image'] as String?,
  status: (json['status'] as num?)?.toInt(),
  slug: json['slug'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  imageFullUrl: json['image_full_url'] as String?,
  pivot: json['pivot'] == null
      ? null
      : Pivot.fromJson(json['pivot'] as Map<String, dynamic>),
  translations: (json['translations'] as List<dynamic>?)
      ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
      .toList(),
  storage: (json['storage'] as List<dynamic>?)
      ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CuisineToJson(Cuisine instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
  'status': instance.status,
  'slug': instance.slug,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'image_full_url': instance.imageFullUrl,
  'pivot': instance.pivot,
  'translations': instance.translations,
  'storage': instance.storage,
};
