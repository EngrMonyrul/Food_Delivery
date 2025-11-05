import 'package:food_resturant_app/data/models/banners/restaurant.dart';
import 'package:json_annotation/json_annotation.dart';

part 'banner_element.g.dart';

@JsonSerializable()
class BannerElement {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "restaurant")
  final Restaurant? restaurant;
  @JsonKey(name: "food")
  final dynamic food;
  @JsonKey(name: "image_full_url")
  final String? imageFullUrl;

  BannerElement({
    this.id,
    this.title,
    this.type,
    this.image,
    this.restaurant,
    this.food,
    this.imageFullUrl,
  });

  BannerElement copyWith({
    int? id,
    String? title,
    String? type,
    String? image,
    Restaurant? restaurant,
    dynamic food,
    String? imageFullUrl,
  }) => BannerElement(
    id: id ?? this.id,
    title: title ?? this.title,
    type: type ?? this.type,
    image: image ?? this.image,
    restaurant: restaurant ?? this.restaurant,
    food: food ?? this.food,
    imageFullUrl: imageFullUrl ?? this.imageFullUrl,
  );

  factory BannerElement.fromJson(Map<String, dynamic> json) =>
      _$BannerElementFromJson(json);

  Map<String, dynamic> toJson() => _$BannerElementToJson(this);
}
