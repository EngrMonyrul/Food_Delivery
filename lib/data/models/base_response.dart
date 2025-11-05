class BaseResponse<T> {
  final String? message;
  final int? statusCode;
  final T? data;

  BaseResponse({this.message, this.statusCode, this.data});

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) create,
  ) => BaseResponse(
    message: json["message"],
    statusCode: json["status_code"],
    data: create(json),
  );
}
