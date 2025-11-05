// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pivot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pivot _$PivotFromJson(Map<String, dynamic> json) => Pivot(
  restaurantId: (json['restaurant_id'] as num?)?.toInt(),
  cuisineId: (json['cuisine_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$PivotToJson(Pivot instance) => <String, dynamic>{
  'restaurant_id': instance.restaurantId,
  'cuisine_id': instance.cuisineId,
};
