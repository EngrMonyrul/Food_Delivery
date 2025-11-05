// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_pivot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NutritionPivot _$NutritionPivotFromJson(Map<String, dynamic> json) =>
    NutritionPivot(
      foodId: (json['food_id'] as num?)?.toInt(),
      nutritionId: (json['nutrition_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NutritionPivotToJson(NutritionPivot instance) =>
    <String, dynamic>{
      'food_id': instance.foodId,
      'nutrition_id': instance.nutritionId,
    };
