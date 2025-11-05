import 'package:json_annotation/json_annotation.dart';

part 'translation.g.dart';

@JsonSerializable()
class Translation {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "translationable_type")
  final String? translationableType;
  @JsonKey(name: "translationable_id")
  final int? translationableId;
  @JsonKey(name: "locale")
  final String? locale;
  @JsonKey(name: "key")
  final String? key;
  @JsonKey(name: "value")
  final String? value;
  @JsonKey(name: "created_at")
  final dynamic createdAt;
  @JsonKey(name: "updated_at")
  final dynamic updatedAt;

  Translation({
    this.id,
    this.translationableType,
    this.translationableId,
    this.locale,
    this.key,
    this.value,
    this.createdAt,
    this.updatedAt,
  });

  Translation copyWith({
    int? id,
    String? translationableType,
    int? translationableId,
    String? locale,
    String? key,
    String? value,
    dynamic createdAt,
    dynamic updatedAt,
  }) => Translation(
    id: id ?? this.id,
    translationableType: translationableType ?? this.translationableType,
    translationableId: translationableId ?? this.translationableId,
    locale: locale ?? this.locale,
    key: key ?? this.key,
    value: value ?? this.value,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);

  Map<String, dynamic> toJson() => _$TranslationToJson(this);
}
