// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularProducts _$PopularProductsFromJson(Map<String, dynamic> json) =>
    PopularProducts(
      totalSize: (json['total_size'] as num?)?.toInt(),
      limit: json['limit'],
      offset: json['offset'],
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PopularProductsToJson(PopularProducts instance) =>
    <String, dynamic>{
      'total_size': instance.totalSize,
      'limit': instance.limit,
      'offset': instance.offset,
      'products': instance.products,
    };
