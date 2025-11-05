import 'package:json_annotation/json_annotation.dart';

part 'default_location.g.dart';

@JsonSerializable()
class DefaultLocation {
  @JsonKey(name: "lat")
  final String? lat;
  @JsonKey(name: "lng")
  final String? lng;

  DefaultLocation({this.lat, this.lng});

  DefaultLocation copyWith({String? lat, String? lng}) =>
      DefaultLocation(lat: lat ?? this.lat, lng: lng ?? this.lng);

  factory DefaultLocation.fromJson(Map<String, dynamic> json) =>
      _$DefaultLocationFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultLocationToJson(this);
}
