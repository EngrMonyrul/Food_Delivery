import 'package:json_annotation/json_annotation.dart';

part 'business_plan.g.dart';

@JsonSerializable()
class BusinessPlan {
  @JsonKey(name: "commission")
  final int? commission;
  @JsonKey(name: "subscription")
  final int? subscription;

  BusinessPlan({this.commission, this.subscription});

  BusinessPlan copyWith({int? commission, int? subscription}) => BusinessPlan(
    commission: commission ?? this.commission,
    subscription: subscription ?? this.subscription,
  );

  factory BusinessPlan.fromJson(Map<String, dynamic> json) =>
      _$BusinessPlanFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessPlanToJson(this);
}
