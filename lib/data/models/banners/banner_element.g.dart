// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerElement _$BannerElementFromJson(Map<String, dynamic> json) =>
    BannerElement(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      type: json['type'] as String?,
      image: json['image'] as String?,
      restaurant: json['restaurant'] == null
          ? null
          : Restaurant.fromJson(json['restaurant'] as Map<String, dynamic>),
      food: json['food'],
      imageFullUrl: json['image_full_url'] as String?,
    );

Map<String, dynamic> _$BannerElementToJson(BannerElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'image': instance.image,
      'restaurant': instance.restaurant,
      'food': instance.food,
      'image_full_url': instance.imageFullUrl,
    };
