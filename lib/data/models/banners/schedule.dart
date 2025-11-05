import 'package:json_annotation/json_annotation.dart';

part 'schedule.g.dart';

@JsonSerializable()
class Schedule {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "restaurant_id")
  final int? restaurantId;
  @JsonKey(name: "day")
  final int? day;
  @JsonKey(name: "opening_time")
  final String? openingTime;
  @JsonKey(name: "closing_time")
  final String? closingTime;
  @JsonKey(name: "created_at")
  final dynamic createdAt;
  @JsonKey(name: "updated_at")
  final dynamic updatedAt;

  Schedule({
    this.id,
    this.restaurantId,
    this.day,
    this.openingTime,
    this.closingTime,
    this.createdAt,
    this.updatedAt,
  });

  Schedule copyWith({
    int? id,
    int? restaurantId,
    int? day,
    String? openingTime,
    String? closingTime,
    dynamic createdAt,
    dynamic updatedAt,
  }) =>
      Schedule(
        id: id ?? this.id,
        restaurantId: restaurantId ?? this.restaurantId,
        day: day ?? this.day,
        openingTime: openingTime ?? this.openingTime,
        closingTime: closingTime ?? this.closingTime,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleToJson(this);
}
