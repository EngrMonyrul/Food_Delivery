// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variation _$VariationFromJson(Map<String, dynamic> json) => Variation(
  variationId: (json['variation_id'] as num?)?.toInt(),
  name: json['name'] as String?,
  type: json['type'] as String?,
  min: json['min'],
  max: json['max'],
  required: json['required'] as String?,
  values: (json['values'] as List<dynamic>?)
      ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$VariationToJson(Variation instance) => <String, dynamic>{
  'variation_id': instance.variationId,
  'name': instance.name,
  'type': instance.type,
  'min': instance.min,
  'max': instance.max,
  'required': instance.required,
  'values': instance.values,
};
