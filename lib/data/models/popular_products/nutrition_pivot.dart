import 'package:json_annotation/json_annotation.dart';

part 'nutrition_pivot.g.dart';

@JsonSerializable()
class NutritionPivot {
  @JsonKey(name: "food_id")
  final int? foodId;
  @JsonKey(name: "nutrition_id")
  final int? nutritionId;

  NutritionPivot({
    this.foodId,
    this.nutritionId,
  });

  NutritionPivot copyWith({
    int? foodId,
    int? nutritionId,
  }) =>
      NutritionPivot(
        foodId: foodId ?? this.foodId,
        nutritionId: nutritionId ?? this.nutritionId,
      );

  factory NutritionPivot.fromJson(Map<String, dynamic> json) => _$NutritionPivotFromJson(json);

  Map<String, dynamic> toJson() => _$NutritionPivotToJson(this);
}
