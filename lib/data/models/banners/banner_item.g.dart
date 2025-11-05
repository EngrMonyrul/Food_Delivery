// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerItem _$BannerItemFromJson(Map<String, dynamic> json) => BannerItem(
  campaigns: json['campaigns'] as List<dynamic>?,
  banners: (json['banners'] as List<dynamic>?)
      ?.map((e) => BannerElement.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BannerItemToJson(BannerItem instance) =>
    <String, dynamic>{
      'campaigns': instance.campaigns,
      'banners': instance.banners,
    };
