import 'dart:developer';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:food_resturant_app/data/datasources/remote/api_client.dart';
import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:food_resturant_app/data/models/configurations/configuration_model.dart';
import 'package:food_resturant_app/data/repositories/configurations/configuration_repo_impl.dart';
import 'package:food_resturant_app/domain/repositories/configurations/configuration_repo.dart';

import 'widget_test.mocks.dart';

void main() {
  late MockApiClient mockApiClient;
  late ConfigurationRepo configurationRepo;

  setUp(() {
    GetIt.I.reset();
    mockApiClient = MockApiClient();

    GetIt.I.registerLazySingleton<ApiClient>(() => mockApiClient);
    GetIt.I.registerLazySingleton<ConfigurationRepo>(
      () => ConfigurationRepoImpl(GetIt.I<ApiClient>()),
    );

    configurationRepo = GetIt.I<ConfigurationRepo>();
  });

  // config api test
  group("Config api test", () {
    test("Should return config data when API call succeeds", () async {
      // Arrange
      final mockConfig = Configuration();
      final mockResponse = BaseResponse<Configuration>(statusCode: 200);

      when(
        mockApiClient.getConfiguration(),
      ).thenAnswer((_) async => mockResponse);

      // Act
      final result = await configurationRepo.getConfigurations();

      // Log result for debug
      log(
        "Test Success: ${result.statusCode}, ${result.message}, ${result.data}",
      );

      // Assert
      expect(result.statusCode, 200);
      verify(mockApiClient.getConfiguration()).called(1);
    });

    test("Should return error BaseResponse when API call fails", () async {
      // Arrange
      when(
        mockApiClient.getConfiguration(),
      ).thenThrow(Exception("No data found"));

      // Act
      final result = await configurationRepo.getConfigurations();

      // Log result for debug
      log(
        "Test Failure: ${result.statusCode}, ${result.message}, ${result.data}",
      );

      // Assert
      expect(result.statusCode, 500);
    });
  });
}
