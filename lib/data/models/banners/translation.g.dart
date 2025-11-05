// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Translation _$TranslationFromJson(Map<String, dynamic> json) => Translation(
  id: (json['id'] as num?)?.toInt(),
  translationableType: json['translationable_type'] as String?,
  translationableId: (json['translationable_id'] as num?)?.toInt(),
  locale: json['locale'] as String?,
  key: json['key'] as String?,
  value: json['value'] as String?,
  createdAt: json['created_at'],
  updatedAt: json['updated_at'],
);

Map<String, dynamic> _$TranslationToJson(Translation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'translationable_type': instance.translationableType,
      'translationable_id': instance.translationableId,
      'locale': instance.locale,
      'key': instance.key,
      'value': instance.value,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
