import 'package:json_annotation/json_annotation.dart';

part 'language.g.dart';

@JsonSerializable()
class Language {
  @JsonKey(name: "key")
  final String? key;
  @JsonKey(name: "value")
  final String? value;

  Language({this.key, this.value});

  Language copyWith({String? key, String? value}) =>
      Language(key: key ?? this.key, value: value ?? this.value);

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}
