import 'package:food_resturant_app/data/datasources/remote/api_client.dart';
import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:food_resturant_app/data/models/popular_products/popular_products.dart';
import 'package:food_resturant_app/domain/repositories/product_popular/product_popular_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/networks/error_handler.dart';

@LazySingleton(as: ProductPopularRepo)
class ProductPopularRepoImpl extends ProductPopularRepo {
  ProductPopularRepoImpl(ApiClient client) : _apiClient = client;
  ApiClient _apiClient;

  Future<BaseResponse<PopularProducts>> getProductPopular() async {
    return await _apiClient
        .getProductPopular()
        .then((value) => value)
        .onError(ErrorHandler.error);
  }
}
