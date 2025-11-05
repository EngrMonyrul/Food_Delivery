// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Storage _$StorageFromJson(Map<String, dynamic> json) => Storage(
  id: (json['id'] as num?)?.toInt(),
  dataType: json['data_type'] as String?,
  dataId: json['data_id'] as String?,
  key: json['key'] as String?,
  value: json['value'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$StorageToJson(Storage instance) => <String, dynamic>{
  'id': instance.id,
  'data_type': instance.dataType,
  'data_id': instance.dataId,
  'key': instance.key,
  'value': instance.value,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};
