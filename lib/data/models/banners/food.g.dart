// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food _$FoodFromJson(Map<String, dynamic> json) => Food(
  id: (json['id'] as num?)?.toInt(),
  image: json['image'] as String?,
  name: json['name'] as String?,
  imageFullUrl: json['image_full_url'] as String?,
  storage: (json['storage'] as List<dynamic>?)
      ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
      .toList(),
  translations: (json['translations'] as List<dynamic>?)
      ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
  'id': instance.id,
  'image': instance.image,
  'name': instance.name,
  'image_full_url': instance.imageFullUrl,
  'storage': instance.storage,
  'translations': instance.translations,
};
