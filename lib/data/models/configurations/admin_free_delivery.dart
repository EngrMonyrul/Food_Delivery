import 'package:json_annotation/json_annotation.dart';

part 'admin_free_delivery.g.dart';

@JsonSerializable()
class AdminFreeDelivery {
  @JsonKey(name: "status")
  final bool? status;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "free_delivery_over")
  final int? freeDeliveryOver;
  @JsonKey(name: "free_delivery_distance")
  final int? freeDeliveryDistance;

  AdminFreeDelivery({
    this.status,
    this.type,
    this.freeDeliveryOver,
    this.freeDeliveryDistance,
  });

  AdminFreeDelivery copyWith({
    bool? status,
    String? type,
    int? freeDeliveryOver,
    int? freeDeliveryDistance,
  }) => AdminFreeDelivery(
    status: status ?? this.status,
    type: type ?? this.type,
    freeDeliveryOver: freeDeliveryOver ?? this.freeDeliveryOver,
    freeDeliveryDistance: freeDeliveryDistance ?? this.freeDeliveryDistance,
  );

  factory AdminFreeDelivery.fromJson(Map<String, dynamic> json) =>
      _$AdminFreeDeliveryFromJson(json);

  Map<String, dynamic> toJson() => _$AdminFreeDeliveryToJson(this);
}
