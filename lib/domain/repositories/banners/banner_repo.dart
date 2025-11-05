import 'package:flutter/cupertino.dart';
import 'package:food_resturant_app/data/models/base_response.dart';
import '../../../data/models/banners/banner_item.dart';

abstract class BannerRepo {
  Future<BaseResponse<BannerItem>> getBanners();
}
