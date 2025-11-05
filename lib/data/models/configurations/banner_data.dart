import 'package:json_annotation/json_annotation.dart';

part 'banner_data.g.dart';

@JsonSerializable()
class BannerData {
  @JsonKey(name: "promotional_banner_image")
  final String? promotionalBannerImage;
  @JsonKey(name: "promotional_banner_title")
  final String? promotionalBannerTitle;
  @JsonKey(name: "promotional_banner_image_full_url")
  final String? promotionalBannerImageFullUrl;

  BannerData({
    this.promotionalBannerImage,
    this.promotionalBannerTitle,
    this.promotionalBannerImageFullUrl,
  });

  BannerData copyWith({
    String? promotionalBannerImage,
    String? promotionalBannerTitle,
    String? promotionalBannerImageFullUrl,
  }) =>
      BannerData(
        promotionalBannerImage: promotionalBannerImage ?? this.promotionalBannerImage,
        promotionalBannerTitle: promotionalBannerTitle ?? this.promotionalBannerTitle,
        promotionalBannerImageFullUrl: promotionalBannerImageFullUrl ?? this.promotionalBannerImageFullUrl,
      );

  factory BannerData.fromJson(Map<String, dynamic> json) => _$BannerDataFromJson(json);

  Map<String, dynamic> toJson() => _$BannerDataToJson(this);
}
