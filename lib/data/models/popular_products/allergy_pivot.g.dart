// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allergy_pivot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllergyPivot _$AllergyPivotFromJson(Map<String, dynamic> json) => AllergyPivot(
  foodId: (json['food_id'] as num?)?.toInt(),
  allergyId: (json['allergy_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$AllergyPivotToJson(AllergyPivot instance) =>
    <String, dynamic>{
      'food_id': instance.foodId,
      'allergy_id': instance.allergyId,
    };
