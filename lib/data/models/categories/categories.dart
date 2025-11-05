import 'package:json_annotation/json_annotation.dart';
import '../banners/storage.dart';
import '../banners/translation.dart';

part 'categories.g.dart';

@JsonSerializable()
class Categories {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "parent_id")
  final int? parentId;
  @JsonKey(name: "position")
  final int? position;
  @JsonKey(name: "status")
  final int? status;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "priority")
  final int? priority;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "products_count")
  final int? productsCount;
  @JsonKey(name: "childes_count")
  final int? childesCount;
  @JsonKey(name: "order_count")
  final dynamic orderCount;
  @JsonKey(name: "image_full_url")
  final String? imageFullUrl;
  @JsonKey(name: "translations")
  final List<Translation>? translations;
  @JsonKey(name: "storage")
  final List<Storage>? storage;
  @JsonKey(name: "childes")
  final List<Categories>? childes;

  Categories({
    this.id,
    this.name,
    this.image,
    this.parentId,
    this.position,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.priority,
    this.slug,
    this.productsCount,
    this.childesCount,
    this.orderCount,
    this.imageFullUrl,
    this.translations,
    this.storage,
    this.childes,
  });

  Categories copyWith({
    int? id,
    String? name,
    String? image,
    int? parentId,
    int? position,
    int? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? priority,
    String? slug,
    int? productsCount,
    int? childesCount,
    dynamic orderCount,
    String? imageFullUrl,
    List<Translation>? translations,
    List<Storage>? storage,
    List<Categories>? childes,
  }) => Categories(
    id: id ?? this.id,
    name: name ?? this.name,
    image: image ?? this.image,
    parentId: parentId ?? this.parentId,
    position: position ?? this.position,
    status: status ?? this.status,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    priority: priority ?? this.priority,
    slug: slug ?? this.slug,
    productsCount: productsCount ?? this.productsCount,
    childesCount: childesCount ?? this.childesCount,
    orderCount: orderCount ?? this.orderCount,
    imageFullUrl: imageFullUrl ?? this.imageFullUrl,
    translations: translations ?? this.translations,
    storage: storage ?? this.storage,
    childes: childes ?? this.childes,
  );

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}
