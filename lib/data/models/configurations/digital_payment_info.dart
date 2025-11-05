import 'package:json_annotation/json_annotation.dart';

part 'digital_payment_info.g.dart';

@JsonSerializable()
class DigitalPaymentInfo {
  @JsonKey(name: "digital_payment")
  final bool? digitalPayment;
  @JsonKey(name: "plugin_payment_gateways")
  final bool? pluginPaymentGateways;
  @JsonKey(name: "default_payment_gateways")
  final bool? defaultPaymentGateways;

  DigitalPaymentInfo({
    this.digitalPayment,
    this.pluginPaymentGateways,
    this.defaultPaymentGateways,
  });

  DigitalPaymentInfo copyWith({
    bool? digitalPayment,
    bool? pluginPaymentGateways,
    bool? defaultPaymentGateways,
  }) => DigitalPaymentInfo(
    digitalPayment: digitalPayment ?? this.digitalPayment,
    pluginPaymentGateways: pluginPaymentGateways ?? this.pluginPaymentGateways,
    defaultPaymentGateways:
        defaultPaymentGateways ?? this.defaultPaymentGateways,
  );

  factory DigitalPaymentInfo.fromJson(Map<String, dynamic> json) =>
      _$DigitalPaymentInfoFromJson(json);

  Map<String, dynamic> toJson() => _$DigitalPaymentInfoToJson(this);
}
