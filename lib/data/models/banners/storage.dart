import 'package:json_annotation/json_annotation.dart';

part 'storage.g.dart';

@JsonSerializable()
class Storage {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "data_type")
  final String? dataType;
  @JsonKey(name: "data_id")
  final String? dataId;
  @JsonKey(name: "key")
  final String? key;
  @JsonKey(name: "value")
  final String? value;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  Storage({
    this.id,
    this.dataType,
    this.dataId,
    this.key,
    this.value,
    this.createdAt,
    this.updatedAt,
  });

  Storage copyWith({
    int? id,
    String? dataType,
    String? dataId,
    String? key,
    String? value,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Storage(
        id: id ?? this.id,
        dataType: dataType ?? this.dataType,
        dataId: dataId ?? this.dataId,
        key: key ?? this.key,
        value: value ?? this.value,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Storage.fromJson(Map<String, dynamic> json) => _$StorageFromJson(json);

  Map<String, dynamic> toJson() => _$StorageToJson(this);
}
