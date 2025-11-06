import 'package:flutter/cupertino.dart';
import 'package:food_resturant_app/data/models/banners/banner_item.dart';
import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:food_resturant_app/data/models/campaigns/campaigns_item.dart';
import 'package:food_resturant_app/data/models/categories/categories.dart';
import 'package:food_resturant_app/data/models/configurations/configuration_model.dart';
import 'package:food_resturant_app/data/models/popular_products/popular_products.dart';
import 'package:food_resturant_app/data/models/resturants/resturants_item.dart';
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
/// await apiClient.getData();
/// ```
@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/api/v1/config")
  Future<BaseResponse<Configuration>> getConfiguration();

  @GET("/api/v1/banners")
  Future<BaseResponse<BannerItem>> getBanners();

  @GET("/api/v1/categories")
  Future<BaseResponse<List<Categories>>> getCategories();

  @GET("/api/v1/products/popular")
  Future<BaseResponse<PopularProducts>> getProductPopular();

  @GET("/api/v1/campaigns/item")
  Future<BaseResponse<CampaignsItem>> getCampaignsItems();

  @GET("/api/v1/restaurants/get-restaurants/all")
  Future<BaseResponse<ResturantItem>> getResturantItems({
    @Query("offset") int? offset,
    @Query("limit") int? limit,
  });
}
