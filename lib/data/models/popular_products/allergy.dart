import 'package:json_annotation/json_annotation.dart';

import 'allergy_pivot.dart';

part 'allergy.g.dart';

@JsonSerializable()
class Allergy {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "allergy")
  final String? allergy;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "pivot")
  final AllergyPivot? pivot;

  Allergy({this.id, this.allergy, this.createdAt, this.updatedAt, this.pivot});

  Allergy copyWith({
    int? id,
    String? allergy,
    DateTime? createdAt,
    DateTime? updatedAt,
    AllergyPivot? pivot,
  }) => Allergy(
    id: id ?? this.id,
    allergy: allergy ?? this.allergy,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    pivot: pivot ?? this.pivot,
  );

  factory Allergy.fromJson(Map<String, dynamic> json) =>
      _$AllergyFromJson(json);

  Map<String, dynamic> toJson() => _$AllergyToJson(this);
}
