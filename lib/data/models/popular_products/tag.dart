import 'package:json_annotation/json_annotation.dart';
import 'package:food_resturant_app/data/models/popular_products/tag_pivot.dart';

part 'tag.g.dart';

@JsonSerializable()
class Tag {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "tag")
  final String? tag;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "pivot")
  final TagPivot? pivot;

  Tag({this.id, this.tag, this.createdAt, this.updatedAt, this.pivot});

  Tag copyWith({
    int? id,
    String? tag,
    DateTime? createdAt,
    DateTime? updatedAt,
    TagPivot? pivot,
  }) => Tag(
    id: id ?? this.id,
    tag: tag ?? this.tag,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    pivot: pivot ?? this.pivot,
  );

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  Map<String, dynamic> toJson() => _$TagToJson(this);
}
