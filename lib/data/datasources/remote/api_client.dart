import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'api_client.g.dart';

/// ### Api Client handle:
/// 1. Api request
/// 2. Return the json to the repository
/// 3. Parse the json into appropriate return format
///
/// Usage:
/// ```dart
/// final apiClient = ApiClient();
/// apiClient.getData();
/// ```
@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/api/v1/config")
  Future<BaseResponse<dynamic>> getConfiguration();
}
