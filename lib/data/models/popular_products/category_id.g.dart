// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryId _$CategoryIdFromJson(Map<String, dynamic> json) => CategoryId(
  id: json['id'] as String?,
  position: (json['position'] as num?)?.toInt(),
  categoryName: json['category_name'] as String?,
);

Map<String, dynamic> _$CategoryIdToJson(CategoryId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'position': instance.position,
      'category_name': instance.categoryName,
    };
