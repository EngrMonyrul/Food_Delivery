// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaData _$MediaDataFromJson(Map<String, dynamic> json) => MediaData(
  uploadMultipleFiles: (json['upload_multiple_files'] as num?)?.toInt(),
  image: (json['image'] as num?)?.toInt(),
  pdf: (json['pdf'] as num?)?.toInt(),
  docs: (json['docs'] as num?)?.toInt(),
);

Map<String, dynamic> _$MediaDataToJson(MediaData instance) => <String, dynamic>{
  'upload_multiple_files': instance.uploadMultipleFiles,
  'image': instance.image,
  'pdf': instance.pdf,
  'docs': instance.docs,
};
