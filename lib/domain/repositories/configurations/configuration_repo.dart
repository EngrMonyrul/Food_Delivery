import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:food_resturant_app/data/models/configurations/configuration_model.dart';

/// ### Configurations Repository handle Configuration Apis
///
/// Methods:
/// ```dart
/// Future<BaseResponse<Configuration>> getConfigurations() {}
/// ```
abstract class ConfigurationRepo {
  Future<BaseResponse<Configuration>> getConfigurations();
}
