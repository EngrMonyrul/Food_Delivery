import 'package:json_annotation/json_annotation.dart';

import 'nutrition_pivot.dart';

part 'nutration.g.dart';

@JsonSerializable()
class Nutrition {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "nutrition")
  final String? nutrition;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "pivot")
  final NutritionPivot? pivot;

  Nutrition({
    this.id,
    this.nutrition,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  Nutrition copyWith({
    int? id,
    String? nutrition,
    DateTime? createdAt,
    DateTime? updatedAt,
    NutritionPivot? pivot,
  }) => Nutrition(
    id: id ?? this.id,
    nutrition: nutrition ?? this.nutrition,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    pivot: pivot ?? this.pivot,
  );

  factory Nutrition.fromJson(Map<String, dynamic> json) =>
      _$NutritionFromJson(json);

  Map<String, dynamic> toJson() => _$NutritionToJson(this);
}
