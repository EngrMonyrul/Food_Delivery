import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di_service.config.dart';

final di = GetIt.instance;

/// Di Service initializes and registers all Dependencies
@InjectableInit(
  preferRelativeImports: true,
  asExtension: true,
  initializerName: "init",
)
class DiService {
  static Future<void> init({String? baseUrl}) async {
    di.init();
  }
}
