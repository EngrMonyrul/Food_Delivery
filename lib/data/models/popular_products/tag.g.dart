// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
  id: (json['id'] as num?)?.toInt(),
  tag: json['tag'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  pivot: json['pivot'] == null
      ? null
      : TagPivot.fromJson(json['pivot'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
  'id': instance.id,
  'tag': instance.tag,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'pivot': instance.pivot,
};
