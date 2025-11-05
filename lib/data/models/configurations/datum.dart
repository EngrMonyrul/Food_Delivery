import 'package:json_annotation/json_annotation.dart';
import 'media_data.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  @JsonKey(name: "field_type")
  final String? fieldType;
  @JsonKey(name: "input_data")
  final String? inputData;
  @JsonKey(name: "check_data")
  final dynamic checkData;
  @JsonKey(name: "media_data")
  final MediaData? mediaData;
  @JsonKey(name: "placeholder_data")
  final String? placeholderData;
  @JsonKey(name: "is_required")
  final int? isRequired;

  Datum({
    this.fieldType,
    this.inputData,
    this.checkData,
    this.mediaData,
    this.placeholderData,
    this.isRequired,
  });

  Datum copyWith({
    String? fieldType,
    String? inputData,
    dynamic checkData,
    MediaData? mediaData,
    String? placeholderData,
    int? isRequired,
  }) => Datum(
    fieldType: fieldType ?? this.fieldType,
    inputData: inputData ?? this.inputData,
    checkData: checkData ?? this.checkData,
    mediaData: mediaData ?? this.mediaData,
    placeholderData: placeholderData ?? this.placeholderData,
    isRequired: isRequired ?? this.isRequired,
  );

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
