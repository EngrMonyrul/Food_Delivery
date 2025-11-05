import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:food_resturant_app/data/models/campaigns/campaigns_item.dart';

abstract class CampaignsRepo {
  Future<BaseResponse<CampaignsItem>> getCampaignsItem();
}
