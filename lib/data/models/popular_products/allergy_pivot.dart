import 'package:json_annotation/json_annotation.dart';

part 'allergy_pivot.g.dart';

@JsonSerializable()
class AllergyPivot {
  @JsonKey(name: "food_id")
  final int? foodId;
  @JsonKey(name: "allergy_id")
  final int? allergyId;

  AllergyPivot({
    this.foodId,
    this.allergyId,
  });

  AllergyPivot copyWith({
    int? foodId,
    int? allergyId,
  }) =>
      AllergyPivot(
        foodId: foodId ?? this.foodId,
        allergyId: allergyId ?? this.allergyId,
      );

  factory AllergyPivot.fromJson(Map<String, dynamic> json) => _$AllergyPivotFromJson(json);

  Map<String, dynamic> toJson() => _$AllergyPivotToJson(this);
}
