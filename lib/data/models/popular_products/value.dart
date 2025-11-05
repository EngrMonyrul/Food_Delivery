import 'package:json_annotation/json_annotation.dart';

part 'value.g.dart';

@JsonSerializable()
class Value {
  @JsonKey(name: "label")
  final String? label;
  @JsonKey(name: "optionPrice")
  final dynamic optionPrice;
  @JsonKey(name: "total_stock")
  final String? totalStock;
  @JsonKey(name: "stock_type")
  final String? stockType;
  @JsonKey(name: "sell_count")
  final String? sellCount;
  @JsonKey(name: "option_id")
  final int? optionId;
  @JsonKey(name: "current_stock")
  final int? currentStock;

  Value({
    this.label,
    this.optionPrice,
    this.totalStock,
    this.stockType,
    this.sellCount,
    this.optionId,
    this.currentStock,
  });

  Value copyWith({
    String? label,
    dynamic optionPrice,
    String? totalStock,
    String? stockType,
    String? sellCount,
    int? optionId,
    int? currentStock,
  }) =>
      Value(
        label: label ?? this.label,
        optionPrice: optionPrice ?? this.optionPrice,
        totalStock: totalStock ?? this.totalStock,
        stockType: stockType ?? this.stockType,
        sellCount: sellCount ?? this.sellCount,
        optionId: optionId ?? this.optionId,
        currentStock: currentStock ?? this.currentStock,
      );

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);

  Map<String, dynamic> toJson() => _$ValueToJson(this);
}
