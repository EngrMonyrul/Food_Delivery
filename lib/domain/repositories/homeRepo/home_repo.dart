import '../../../data/models/banners/banner_item.dart';
import '../../../data/models/base_response.dart';
import '../../../data/models/campaigns/campaigns_item.dart';
import '../../../data/models/categories/categories.dart';
import '../../../data/models/configurations/configuration_model.dart';
import '../../../data/models/popular_products/popular_products.dart';
import '../../../data/models/resturants/resturants_item.dart';

abstract class HomeRepo {
  Future<BaseResponse<BannerItem>> getBanners();

  Future<BaseResponse<List<CampaignsItem>>> getCampaignsItem();

  Future<BaseResponse<List<Categories>>> getCategories();

  Future<BaseResponse<Configuration>> getConfigurations();

  Future<BaseResponse<PopularProducts>> getProductPopular();

  Future<BaseResponse<ResturantItem>> getResturantsItems({
    required int offset,
    required int limit,
  });
}
