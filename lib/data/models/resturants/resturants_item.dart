import 'package:json_annotation/json_annotation.dart';

import '../banners/restaurant.dart';

part 'resturants_item.g.dart';

@JsonSerializable()
class ResturantItem {
  @JsonKey(name: "filter_data")
  final String? filterData;
  @JsonKey(name: "total_size")
  final int? totalSize;
  @JsonKey(name: "limit")
  final String? limit;
  @JsonKey(name: "offset")
  final String? offset;
  @JsonKey(name: "restaurants")
  final List<Restaurant>? restaurants;

  ResturantItem({
    this.filterData,
    this.totalSize,
    this.limit,
    this.offset,
    this.restaurants,
  });

  ResturantItem copyWith({
    String? filterData,
    int? totalSize,
    String? limit,
    String? offset,
    List<Restaurant>? restaurants,
  }) => ResturantItem(
    filterData: filterData ?? this.filterData,
    totalSize: totalSize ?? this.totalSize,
    limit: limit ?? this.limit,
    offset: offset ?? this.offset,
    restaurants: restaurants ?? this.restaurants,
  );

  factory ResturantItem.fromJson(Map<String, dynamic> json) =>
      _$ResturantItemFromJson(json);

  Map<String, dynamic> toJson() => _$ResturantItemToJson(this);
}
