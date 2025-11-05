// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_pivot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagPivot _$TagPivotFromJson(Map<String, dynamic> json) => TagPivot(
  foodId: (json['food_id'] as num?)?.toInt(),
  tagId: (json['tag_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$TagPivotToJson(TagPivot instance) => <String, dynamic>{
  'food_id': instance.foodId,
  'tag_id': instance.tagId,
};
