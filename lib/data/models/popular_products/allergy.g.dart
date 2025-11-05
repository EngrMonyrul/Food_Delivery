// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allergy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Allergy _$AllergyFromJson(Map<String, dynamic> json) => Allergy(
  id: (json['id'] as num?)?.toInt(),
  allergy: json['allergy'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  pivot: json['pivot'] == null
      ? null
      : AllergyPivot.fromJson(json['pivot'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AllergyToJson(Allergy instance) => <String, dynamic>{
  'id': instance.id,
  'allergy': instance.allergy,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'pivot': instance.pivot,
};
