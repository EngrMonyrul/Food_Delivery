import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:food_resturant_app/data/models/resturants/resturants_item.dart';

abstract class ResturantsRepo {
  Future<BaseResponse<ResturantItem>> getResturantsItems({
    required int offset,
    required int limit,
  });
}
