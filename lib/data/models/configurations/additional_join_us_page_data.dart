import 'package:json_annotation/json_annotation.dart';
import 'datum.dart';

part 'additional_join_us_page_data.g.dart';

@JsonSerializable()
class AdditionalJoinUsPageData {
  @JsonKey(name: "data")
  final List<Datum>? data;

  AdditionalJoinUsPageData({this.data});

  AdditionalJoinUsPageData copyWith({List<Datum>? data}) =>
      AdditionalJoinUsPageData(data: data ?? this.data);

  factory AdditionalJoinUsPageData.fromJson(Map<String, dynamic> json) =>
      _$AdditionalJoinUsPageDataFromJson(json);

  Map<String, dynamic> toJson() => _$AdditionalJoinUsPageDataToJson(this);
}
