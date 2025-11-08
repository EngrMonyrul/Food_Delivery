import 'package:food_resturant_app/data/datasources/remote/api_client.dart';
import 'package:food_resturant_app/data/models/banners/banner_item.dart';
import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:food_resturant_app/data/models/campaigns/campaigns_item.dart';
import 'package:food_resturant_app/data/models/categories/categories.dart';
import 'package:food_resturant_app/data/models/configurations/configuration_model.dart';
import 'package:food_resturant_app/data/models/popular_products/popular_products.dart';
import 'package:food_resturant_app/data/models/resturants/resturants_item.dart';
import 'package:food_resturant_app/domain/repositories/homeRepo/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/networks/error_handler.dart';

@LazySingleton(as: HomeRepo)
class HomeRepoImpl extends HomeRepo {
  HomeRepoImpl(ApiClient client) : _apiClient = client;
  final ApiClient _apiClient;

  @override
  Future<BaseResponse<BannerItem>> getBanners() async {
    return await _apiClient
        .getBanners()
        .then((value) => value)
        .onError(ErrorHandler.error);
  }

  @override
  Future<BaseResponse<List<CampaignsItem>>> getCampaignsItem() async {
    return await _apiClient
        .getCampaignsItems()
        .then((value) => value)
        .onError(ErrorHandler.error);
  }

  @override
  Future<BaseResponse<List<Categories>>> getCategories() async {
    return await _apiClient
        .getCategories()
        .then((value) => value)
        .onError(ErrorHandler.error);
  }

  @override
  Future<BaseResponse<Configuration>> getConfigurations() async {
    return await _apiClient
        .getConfiguration()
        .then((value) => value)
        .onError(ErrorHandler.error);
  }

  @override
  Future<BaseResponse<PopularProducts>> getProductPopular() async {
    return await _apiClient
        .getProductPopular()
        .then((value) => value)
        .onError(ErrorHandler.error);
  }

  @override
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
