import 'package:json_annotation/json_annotation.dart';

part 'category_id.g.dart';

@JsonSerializable()
class CategoryId {
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "position")
  final int? position;
  @JsonKey(name: "category_name")
  final String? categoryName;

  CategoryId({
    this.id,
    this.position,
    this.categoryName,
  });

  CategoryId copyWith({
    String? id,
    int? position,
    String? categoryName,
  }) =>
      CategoryId(
        id: id ?? this.id,
        position: position ?? this.position,
        categoryName: categoryName ?? this.categoryName,
      );

  factory CategoryId.fromJson(Map<String, dynamic> json) => _$CategoryIdFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryIdToJson(this);
}
