import 'package:food_resturant_app/data/models/popular_products/value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'variation.g.dart';

@JsonSerializable()
class Variation {
  @JsonKey(name: "variation_id")
  final int? variationId;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "min")
  final dynamic min;
  @JsonKey(name: "max")
  final dynamic max;
  @JsonKey(name: "required")
  final String? required;
  @JsonKey(name: "values")
  final List<Value>? values;

  Variation({
    this.variationId,
    this.name,
    this.type,
    this.min,
    this.max,
    this.required,
    this.values,
  });

  Variation copyWith({
    int? variationId,
    String? name,
    String? type,
    dynamic min,
    dynamic max,
    String? required,
    List<Value>? values,
  }) => Variation(
    variationId: variationId ?? this.variationId,
    name: name ?? this.name,
    type: type ?? this.type,
    min: min ?? this.min,
    max: max ?? this.max,
    required: required ?? this.required,
    values: values ?? this.values,
  );

  factory Variation.fromJson(Map<String, dynamic> json) =>
      _$VariationFromJson(json);

  Map<String, dynamic> toJson() => _$VariationToJson(this);
}
