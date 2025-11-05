import 'package:food_resturant_app/data/datasources/remote/api_client.dart';
import 'package:food_resturant_app/data/models/base_response.dart';
import 'package:food_resturant_app/data/models/campaigns/campaigns_item.dart';
import 'package:food_resturant_app/domain/repositories/campaigns/campaigns_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/networks/error_handler.dart';

@LazySingleton(as: CampaignsRepo)
class CampaignsRepoImpl extends CampaignsRepo {
  CampaignsRepoImpl(ApiClient client) : _apiClient = client;
  ApiClient _apiClient;

  Future<BaseResponse<CampaignsItem>> getCampaignsItem() async {
    return await _apiClient
        .getCampaignsItems()
        .then((value) => value)
        .onError(ErrorHandler.error);
  }
}
