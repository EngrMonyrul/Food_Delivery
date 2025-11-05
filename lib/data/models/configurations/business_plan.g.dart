// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessPlan _$BusinessPlanFromJson(Map<String, dynamic> json) => BusinessPlan(
  commission: (json['commission'] as num?)?.toInt(),
  subscription: (json['subscription'] as num?)?.toInt(),
);

Map<String, dynamic> _$BusinessPlanToJson(BusinessPlan instance) =>
    <String, dynamic>{
      'commission': instance.commission,
      'subscription': instance.subscription,
    };
