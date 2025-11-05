import 'package:json_annotation/json_annotation.dart';

import '../banners/translation.dart';

part 'add_on.g.dart';

@JsonSerializable()
class AddOn {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "price")
  final int? price;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "restaurant_id")
  final int? restaurantId;
  @JsonKey(name: "status")
  final int? status;
  @JsonKey(name: "stock_type")
  final String? stockType;
  @JsonKey(name: "addon_stock")
  final int? addonStock;
  @JsonKey(name: "sell_count")
  final int? sellCount;
  @JsonKey(name: "addon_category_id")
  final int? addonCategoryId;
  @JsonKey(name: "tax_ids")
  final List<dynamic>? taxIds;
  @JsonKey(name: "translations")
  final List<Translation>? translations;

  AddOn({
    this.id,
    this.name,
    this.price,
    this.createdAt,
    this.updatedAt,
    this.restaurantId,
    this.status,
    this.stockType,
    this.addonStock,
    this.sellCount,
    this.addonCategoryId,
    this.taxIds,
    this.translations,
  });

  AddOn copyWith({
    int? id,
    String? name,
    int? price,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? restaurantId,
    int? status,
    String? stockType,
    int? addonStock,
    int? sellCount,
    int? addonCategoryId,
    List<dynamic>? taxIds,
    List<Translation>? translations,
  }) => AddOn(
    id: id ?? this.id,
    name: name ?? this.name,
    price: price ?? this.price,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    restaurantId: restaurantId ?? this.restaurantId,
    status: status ?? this.status,
    stockType: stockType ?? this.stockType,
    addonStock: addonStock ?? this.addonStock,
    sellCount: sellCount ?? this.sellCount,
    addonCategoryId: addonCategoryId ?? this.addonCategoryId,
    taxIds: taxIds ?? this.taxIds,
    translations: translations ?? this.translations,
  );

  factory AddOn.fromJson(Map<String, dynamic> json) => _$AddOnFromJson(json);

  Map<String, dynamic> toJson() => _$AddOnToJson(this);
}
