import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "status_code")
  final int? statusCode;
  @JsonKey(name: "data")
  final T? data;

  BaseResponse({this.message, this.statusCode, this.data});

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) fromJsonT,
  ) => BaseResponse(
    statusCode: json["status_code"],
    message: json["message"],
    data: json["data"] != null ? fromJsonT(json["data"]) : null,
  );
}
