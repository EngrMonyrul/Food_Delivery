import 'package:food_resturant_app/core/networks/error_handler.dart';
import 'package:food_resturant_app/data/datasources/remote/api_client.dart';
import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:food_resturant_app/data/models/configurations/configuration_model.dart';
import 'package:food_resturant_app/domain/repositories/configurations/configuration_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ConfigurationRepo)
class ConfigurationRepoImpl extends ConfigurationRepo {
  ConfigurationRepoImpl(ApiClient client) : _apiClient = client;
  ApiClient _apiClient;

  @override
  Future<BaseResponse<Configuration>> getConfigurations() async {
    return await _apiClient
        .getConfiguration()
        .then((value) => value)
        .onError(ErrorHandler.error);
  }
}
