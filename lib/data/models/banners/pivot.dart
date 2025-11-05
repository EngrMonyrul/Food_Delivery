import 'package:json_annotation/json_annotation.dart';

part 'pivot.g.dart';

@JsonSerializable()
class Pivot {
  @JsonKey(name: "restaurant_id")
  final int? restaurantId;
  @JsonKey(name: "cuisine_id")
  final int? cuisineId;

  Pivot({this.restaurantId, this.cuisineId});

  Pivot copyWith({int? restaurantId, int? cuisineId}) => Pivot(
    restaurantId: restaurantId ?? this.restaurantId,
    cuisineId: cuisineId ?? this.cuisineId,
  );

  factory Pivot.fromJson(Map<String, dynamic> json) => _$PivotFromJson(json);

  Map<String, dynamic> toJson() => _$PivotToJson(this);
}
