// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerData _$BannerDataFromJson(Map<String, dynamic> json) => BannerData(
  promotionalBannerImage: json['promotional_banner_image'] as String?,
  promotionalBannerTitle: json['promotional_banner_title'] as String?,
  promotionalBannerImageFullUrl:
      json['promotional_banner_image_full_url'] as String?,
);

Map<String, dynamic> _$BannerDataToJson(
  BannerData instance,
) => <String, dynamic>{
  'promotional_banner_image': instance.promotionalBannerImage,
  'promotional_banner_title': instance.promotionalBannerTitle,
  'promotional_banner_image_full_url': instance.promotionalBannerImageFullUrl,
};
