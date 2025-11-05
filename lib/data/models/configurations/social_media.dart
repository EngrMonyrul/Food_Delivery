import 'package:json_annotation/json_annotation.dart';

part 'social_media.g.dart';

@JsonSerializable()
class SocialMedia {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "link")
  final String? link;
  @JsonKey(name: "status")
  final int? status;
  @JsonKey(name: "created_at")
  final dynamic createdAt;
  @JsonKey(name: "updated_at")
  final dynamic updatedAt;

  SocialMedia({
    this.id,
    this.name,
    this.link,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  SocialMedia copyWith({
    int? id,
    String? name,
    String? link,
    int? status,
    dynamic createdAt,
    dynamic updatedAt,
  }) => SocialMedia(
    id: id ?? this.id,
    name: name ?? this.name,
    link: link ?? this.link,
    status: status ?? this.status,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );

  factory SocialMedia.fromJson(Map<String, dynamic> json) =>
      _$SocialMediaFromJson(json);

  Map<String, dynamic> toJson() => _$SocialMediaToJson(this);
}
