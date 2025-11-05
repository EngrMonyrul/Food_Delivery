import 'package:food_resturant_app/data/datasources/remote/api_client.dart';
import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:food_resturant_app/data/models/categories/categories.dart';
import 'package:food_resturant_app/domain/repositories/categories/categories_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/networks/error_handler.dart';

@LazySingleton(as: CategoriesRepo)
class CategoriesRepoImpl extends CategoriesRepo {
  CategoriesRepoImpl(ApiClient client) : _apiClient = client;
  ApiClient _apiClient;

  @override
  Future<BaseResponse<Categories>> getCategories() async {
    return await _apiClient
        .getCategories()
        .then((value) => value)
        .onError(ErrorHandler.error);
  }
}
