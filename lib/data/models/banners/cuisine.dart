import 'package:food_resturant_app/data/models/banners/pivot.dart';
import 'package:food_resturant_app/data/models/banners/storage.dart';
import 'package:food_resturant_app/data/models/banners/translation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cuisine.g.dart';

@JsonSerializable()
class Cuisine {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "status")
  final int? status;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "image_full_url")
  final String? imageFullUrl;
  @JsonKey(name: "pivot")
  final Pivot? pivot;
  @JsonKey(name: "translations")
  final List<Translation>? translations;
  @JsonKey(name: "storage")
  final List<Storage>? storage;

  Cuisine({
    this.id,
    this.name,
    this.image,
    this.status,
    this.slug,
    this.createdAt,
    this.updatedAt,
    this.imageFullUrl,
    this.pivot,
    this.translations,
    this.storage,
  });

  Cuisine copyWith({
    int? id,
    String? name,
    String? image,
    int? status,
    String? slug,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? imageFullUrl,
    Pivot? pivot,
    List<Translation>? translations,
    List<Storage>? storage,
  }) => Cuisine(
    id: id ?? this.id,
    name: name ?? this.name,
    image: image ?? this.image,
    status: status ?? this.status,
    slug: slug ?? this.slug,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    imageFullUrl: imageFullUrl ?? this.imageFullUrl,
    pivot: pivot ?? this.pivot,
    translations: translations ?? this.translations,
    storage: storage ?? this.storage,
  );

  factory Cuisine.fromJson(Map<String, dynamic> json) =>
      _$CuisineFromJson(json);

  Map<String, dynamic> toJson() => _$CuisineToJson(this);
}
