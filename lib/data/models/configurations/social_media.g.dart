// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialMedia _$SocialMediaFromJson(Map<String, dynamic> json) => SocialMedia(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  link: json['link'] as String?,
  status: (json['status'] as num?)?.toInt(),
  createdAt: json['created_at'],
  updatedAt: json['updated_at'],
);

Map<String, dynamic> _$SocialMediaToJson(SocialMedia instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'link': instance.link,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
