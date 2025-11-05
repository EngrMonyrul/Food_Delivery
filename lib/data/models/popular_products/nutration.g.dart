// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nutrition _$NutritionFromJson(Map<String, dynamic> json) => Nutrition(
  id: (json['id'] as num?)?.toInt(),
  nutrition: json['nutrition'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  pivot: json['pivot'] == null
      ? null
      : NutritionPivot.fromJson(json['pivot'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NutritionToJson(Nutrition instance) => <String, dynamic>{
  'id': instance.id,
  'nutrition': instance.nutrition,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'pivot': instance.pivot,
};
