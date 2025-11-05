// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_join_us_page_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdditionalJoinUsPageData _$AdditionalJoinUsPageDataFromJson(
  Map<String, dynamic> json,
) => AdditionalJoinUsPageData(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AdditionalJoinUsPageDataToJson(
  AdditionalJoinUsPageData instance,
) => <String, dynamic>{'data': instance.data};
