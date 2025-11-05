import 'package:json_annotation/json_annotation.dart';
import 'banner_element.dart';

part 'banner_item.g.dart';

@JsonSerializable()
class BannerItem {
  @JsonKey(name: "campaigns")
  final List<dynamic>? campaigns;
  @JsonKey(name: "banners")
  final List<BannerElement>? banners;

  BannerItem({this.campaigns, this.banners});

  BannerItem copyWith({List<dynamic>? campaigns, List<BannerElement>? banners}) =>
      BannerItem(
        campaigns: campaigns ?? this.campaigns,
        banners: banners ?? this.banners,
      );

  factory BannerItem.fromJson(Map<String, dynamic> json) => _$BannerItemFromJson(json);

  Map<String, dynamic> toJson() => _$BannerItemToJson(this);
}
