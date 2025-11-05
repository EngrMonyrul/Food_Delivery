// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Value _$ValueFromJson(Map<String, dynamic> json) => Value(
  label: json['label'] as String?,
  optionPrice: json['optionPrice'],
  totalStock: json['total_stock'] as String?,
  stockType: json['stock_type'] as String?,
  sellCount: json['sell_count'] as String?,
  optionId: (json['option_id'] as num?)?.toInt(),
  currentStock: (json['current_stock'] as num?)?.toInt(),
);

Map<String, dynamic> _$ValueToJson(Value instance) => <String, dynamic>{
  'label': instance.label,
  'optionPrice': instance.optionPrice,
  'total_stock': instance.totalStock,
  'stock_type': instance.stockType,
  'sell_count': instance.sellCount,
  'option_id': instance.optionId,
  'current_stock': instance.currentStock,
};
