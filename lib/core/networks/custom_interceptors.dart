import 'dart:developer';

import 'package:dio/dio.dart';

/// ### Custom Interceptor is a Dio Interceptor that handles:
/// 1. Adding headers element while sending request
/// 2. Check response direct from apis
/// 3. Check errors
/// 4. Resolve errors
///
/// Methods:
/// ```dart
/// void onRequest(RequestOptions options, RequestInterceptorHandler handler) {}
/// void onError(DioException err, ErrorInterceptorHandler handler) {}
/// void onResponse(Response response, ResponseInterceptorHandler handler) {}
/// ```
///
/// Usage:
/// ```dart
/// final dio = Dio();
/// dio.interceptors.add(CustomInterceptors());
/// ```
class CustomInterceptors extends InterceptorsWrapper {
  // on-request method
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      'zoneId': '[1]',
      'latitude': '23.735129',
      'longitude': '90.425614',
    });

    log(
      "🚀 Api Requesting: \nUrl: ${options.uri}\nHeader: ${options.headers}\nRequest Data: ${options.data}",
    );
    return handler.next(options);
  }

  // on-error method
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log(
      "❌ Api Error To: \nUrl: ${err.requestOptions.uri}\nHeader: ${err.requestOptions.headers}\nError Data: ${err.requestOptions.data}",
    );
    return handler.resolve(err.response!);
  }

  // on-response method
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final data = response.data;
    if (data is Map) {
      data.putIfAbsent("status_code", () => response.statusCode);
      data.putIfAbsent("message", () => response.statusMessage);
      response.data = data;
    }

    log(
      "✔️ Api Response: \nUrl: ${response.realUri}\nHeader: ${response.headers}\nResponse Data: ${response.data}",
    );
    return handler.next(response);
  }
}
