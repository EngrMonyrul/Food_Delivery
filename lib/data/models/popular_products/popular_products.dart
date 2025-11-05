import 'package:food_resturant_app/data/models/popular_products/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'popular_products.g.dart';

@JsonSerializable()
class PopularProducts {
  @JsonKey(name: "total_size")
  final int? totalSize;
  @JsonKey(name: "limit")
  final dynamic limit;
  @JsonKey(name: "offset")
  final dynamic offset;
  @JsonKey(name: "products")
  final List<Product>? products;

  PopularProducts({
    this.totalSize,
    this.limit,
    this.offset,
    this.products,
  });

  PopularProducts copyWith({
    int? totalSize,
    dynamic limit,
    dynamic offset,
    List<Product>? products,
  }) =>
      PopularProducts(
        totalSize: totalSize ?? this.totalSize,
        limit: limit ?? this.limit,
        offset: offset ?? this.offset,
        products: products ?? this.products,
      );

  factory PopularProducts.fromJson(Map<String, dynamic> json) => _$PopularProductsFromJson(json);

  Map<String, dynamic> toJson() => _$PopularProductsToJson(this);
}


