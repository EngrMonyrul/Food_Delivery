import 'package:dio/dio.dart';
import 'package:food_resturant_app/core/networks/custom_interceptors.dart';
import 'package:food_resturant_app/data/datasources/remote/api_client.dart';
import 'package:food_resturant_app/utils/services/di_service.dart';

void setupDi({required String baseUrl}) {
  // register api client with custom interceptor
  di.registerLazySingleton<ApiClient>(
    () => ApiClient(
      Dio(
        BaseOptions(
          baseUrl: baseUrl,
          contentType: "application/json; charset=UTF-8",
          headers: {
            'zoneId': '[1]',
            'latitude': '23.735129',
            'longitude': '90.425614',
          },
        ),
      )..interceptors.add(CustomInterceptors()),
    ),
  );
}
