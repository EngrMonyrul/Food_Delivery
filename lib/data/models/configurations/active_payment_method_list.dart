import 'package:json_annotation/json_annotation.dart';

part 'active_payment_method_list.g.dart';

@JsonSerializable()
class ActivePaymentMethodList {
  @JsonKey(name: "gateway")
  final String? gateway;
  @JsonKey(name: "gateway_title")
  final String? gatewayTitle;
  @JsonKey(name: "gateway_image")
  final String? gatewayImage;
  @JsonKey(name: "gateway_image_full_url")
  final String? gatewayImageFullUrl;

  ActivePaymentMethodList({
    this.gateway,
    this.gatewayTitle,
    this.gatewayImage,
    this.gatewayImageFullUrl,
  });

  ActivePaymentMethodList copyWith({
    String? gateway,
    String? gatewayTitle,
    String? gatewayImage,
    String? gatewayImageFullUrl,
  }) => ActivePaymentMethodList(
    gateway: gateway ?? this.gateway,
    gatewayTitle: gatewayTitle ?? this.gatewayTitle,
    gatewayImage: gatewayImage ?? this.gatewayImage,
    gatewayImageFullUrl: gatewayImageFullUrl ?? this.gatewayImageFullUrl,
  );

  factory ActivePaymentMethodList.fromJson(Map<String, dynamic> json) =>
      _$ActivePaymentMethodListFromJson(json);

  Map<String, dynamic> toJson() => _$ActivePaymentMethodListToJson(this);
}
