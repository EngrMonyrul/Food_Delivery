import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:food_resturant_app/data/models/popular_products/popular_products.dart';

abstract class ProductPopularRepo {
  Future<BaseResponse<PopularProducts>> getProductPopular();
}
