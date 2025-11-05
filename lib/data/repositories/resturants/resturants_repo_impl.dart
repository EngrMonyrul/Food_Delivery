import 'package:food_resturant_app/data/datasources/remote/api_client.dart';
import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:food_resturant_app/data/models/resturants/resturants_item.dart';
import 'package:food_resturant_app/domain/repositories/resturants/resturants_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/networks/error_handler.dart';

@LazySingleton(as: ResturantsRepo)
class ResturantsRepoImpl extends ResturantsRepo {
  ResturantsRepoImpl(ApiClient client) : _apiClient = client;
  ApiClient _apiClient;

  Future<BaseResponse<ResturantItem>> getResturantsItems({
    required int offset,
    required int limit,
  }) async {
    return _apiClient
        .getResturantItems(offset: offset, limit: limit)
        .then((value) => value)
        .onError(ErrorHandler.error);
  }
}
