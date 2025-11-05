// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Schedule _$ScheduleFromJson(Map<String, dynamic> json) => Schedule(
  id: (json['id'] as num?)?.toInt(),
  restaurantId: (json['restaurant_id'] as num?)?.toInt(),
  day: (json['day'] as num?)?.toInt(),
  openingTime: json['opening_time'] as String?,
  closingTime: json['closing_time'] as String?,
  createdAt: json['created_at'],
  updatedAt: json['updated_at'],
);

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
  'id': instance.id,
  'restaurant_id': instance.restaurantId,
  'day': instance.day,
  'opening_time': instance.openingTime,
  'closing_time': instance.closingTime,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
