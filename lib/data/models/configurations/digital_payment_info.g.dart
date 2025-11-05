// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digital_payment_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DigitalPaymentInfo _$DigitalPaymentInfoFromJson(Map<String, dynamic> json) =>
    DigitalPaymentInfo(
      digitalPayment: json['digital_payment'] as bool?,
      pluginPaymentGateways: json['plugin_payment_gateways'] as bool?,
      defaultPaymentGateways: json['default_payment_gateways'] as bool?,
    );

Map<String, dynamic> _$DigitalPaymentInfoToJson(DigitalPaymentInfo instance) =>
    <String, dynamic>{
      'digital_payment': instance.digitalPayment,
      'plugin_payment_gateways': instance.pluginPaymentGateways,
      'default_payment_gateways': instance.defaultPaymentGateways,
    };
