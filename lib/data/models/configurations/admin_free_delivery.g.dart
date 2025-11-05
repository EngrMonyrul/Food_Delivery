// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_free_delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminFreeDelivery _$AdminFreeDeliveryFromJson(Map<String, dynamic> json) =>
    AdminFreeDelivery(
      status: json['status'] as bool?,
      type: json['type'] as String?,
      freeDeliveryOver: (json['free_delivery_over'] as num?)?.toInt(),
      freeDeliveryDistance: (json['free_delivery_distance'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AdminFreeDeliveryToJson(AdminFreeDelivery instance) =>
    <String, dynamic>{
      'status': instance.status,
      'type': instance.type,
      'free_delivery_over': instance.freeDeliveryOver,
      'free_delivery_distance': instance.freeDeliveryDistance,
    };
