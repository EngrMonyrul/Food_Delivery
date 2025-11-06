import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:food_resturant_app/data/models/categories/categories.dart';

abstract class CategoriesRepo {
  Future<BaseResponse<List<Categories>>> getCategories();
}
