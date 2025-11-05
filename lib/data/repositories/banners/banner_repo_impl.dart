import 'package:flutter/src/widgets/banner.dart';
import 'package:food_resturant_app/core/networks/error_handler.dart';
import 'package:food_resturant_app/data/datasources/remote/api_client.dart';
import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:food_resturant_app/domain/repositories/banners/banner_repo.dart';
import 'package:injectable/injectable.dart';
import '../../models/banners/banner_item.dart';

@LazySingleton(as: BannerRepo)
class BannerRepoImpl extends BannerRepo {
  BannerRepoImpl(ApiClient client) : _apiClient = client;
  ApiClient _apiClient;

  @override
  Future<BaseResponse<BannerItem>> getBanners() async {
    return await _apiClient
        .getBanners()
        .then((value) => value)
        .onError(ErrorHandler.error);
  }
}
