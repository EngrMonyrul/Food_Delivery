import 'package:food_resturant_app/data/models/banners/storage.dart';
import 'package:food_resturant_app/data/models/banners/translation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'food.g.dart';

@JsonSerializable()
class Food {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "image_full_url")
  final String? imageFullUrl;
  @JsonKey(name: "storage")
  final List<Storage>? storage;
  @JsonKey(name: "translations")
  final List<Translation>? translations;

  Food({
    this.id,
    this.image,
    this.name,
    this.imageFullUrl,
    this.storage,
    this.translations,
  });

  Food copyWith({
    int? id,
    String? image,
    String? name,
    String? imageFullUrl,
    List<Storage>? storage,
    List<Translation>? translations,
  }) => Food(
    id: id ?? this.id,
    image: image ?? this.image,
    name: name ?? this.name,
    imageFullUrl: imageFullUrl ?? this.imageFullUrl,
    storage: storage ?? this.storage,
    translations: translations ?? this.translations,
  );

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  Map<String, dynamic> toJson() => _$FoodToJson(this);
}
