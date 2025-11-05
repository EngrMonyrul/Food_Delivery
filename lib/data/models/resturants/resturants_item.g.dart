// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resturants_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResturantItem _$ResturantItemFromJson(Map<String, dynamic> json) =>
    ResturantItem(
      filterData: json['filter_data'] as String?,
      totalSize: (json['total_size'] as num?)?.toInt(),
      limit: json['limit'] as String?,
      offset: json['offset'] as String?,
      restaurants: (json['restaurants'] as List<dynamic>?)
          ?.map((e) => Restaurant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResturantItemToJson(ResturantItem instance) =>
    <String, dynamic>{
      'filter_data': instance.filterData,
      'total_size': instance.totalSize,
      'limit': instance.limit,
      'offset': instance.offset,
      'restaurants': instance.restaurants,
    };
