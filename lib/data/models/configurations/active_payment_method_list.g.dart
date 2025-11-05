// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_payment_method_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivePaymentMethodList _$ActivePaymentMethodListFromJson(
  Map<String, dynamic> json,
) => ActivePaymentMethodList(
  gateway: json['gateway'] as String?,
  gatewayTitle: json['gateway_title'] as String?,
  gatewayImage: json['gateway_image'] as String?,
  gatewayImageFullUrl: json['gateway_image_full_url'] as String?,
);

Map<String, dynamic> _$ActivePaymentMethodListToJson(
  ActivePaymentMethodList instance,
) => <String, dynamic>{
  'gateway': instance.gateway,
  'gateway_title': instance.gatewayTitle,
  'gateway_image': instance.gatewayImage,
  'gateway_image_full_url': instance.gatewayImageFullUrl,
};
