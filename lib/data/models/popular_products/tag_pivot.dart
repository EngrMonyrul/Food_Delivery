import 'package:json_annotation/json_annotation.dart';

part 'tag_pivot.g.dart';

@JsonSerializable()
class TagPivot {
  @JsonKey(name: "food_id")
  final int? foodId;
  @JsonKey(name: "tag_id")
  final int? tagId;

  TagPivot({
    this.foodId,
    this.tagId,
  });

  TagPivot copyWith({
    int? foodId,
    int? tagId,
  }) =>
      TagPivot(
        foodId: foodId ?? this.foodId,
        tagId: tagId ?? this.tagId,
      );

  factory TagPivot.fromJson(Map<String, dynamic> json) => _$TagPivotFromJson(json);

  Map<String, dynamic> toJson() => _$TagPivotToJson(this);
}
