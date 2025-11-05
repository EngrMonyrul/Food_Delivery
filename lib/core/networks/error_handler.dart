import 'package:dio/dio.dart';
import 'package:food_resturant_app/data/models/base_response.dart';

/// ### Error Handler is use to handle all the errors with:
/// 1. Exact error message
/// 2. Exact status code
///
/// Usage:
/// ```dart
/// (request).onError(ErrorHandler.error);
/// ```
class ErrorHandler {
  // error method
  static BaseResponse<T> error<T>(Object? error, StackTrace? stackTrace) {
    switch (error.runtimeType) {
      case DioException:
        final response = (error as DioException).response;
        return BaseResponse(
          statusCode: response?.statusCode ?? 501,
          message: response?.statusMessage ?? "Something went wrong!",
        );

      default:
        return BaseResponse(statusCode: 501, message: "Something went wrong!");
    }
  }
}
