// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/datasources/remote/api_client.dart' as _i388;
import '../../data/repositories/banners/banner_repo_impl.dart' as _i855;
import '../../data/repositories/campaigns/campaigns_repo_impl.dart' as _i964;
import '../../data/repositories/categories/categories_repo_impl.dart' as _i361;
import '../../data/repositories/configurations/configuration_repo_impl.dart'
    as _i901;
import '../../data/repositories/product_popular/product_popular_repo_impl.dart'
    as _i180;
import '../../data/repositories/resturants/resturants_repo_impl.dart' as _i764;
import '../../domain/repositories/banners/banner_repo.dart' as _i588;
import '../../domain/repositories/campaigns/campaigns_repo.dart' as _i925;
import '../../domain/repositories/categories/categories_repo.dart' as _i343;
import '../../domain/repositories/configurations/configuration_repo.dart'
    as _i220;
import '../../domain/repositories/product_popular/product_popular_repo.dart'
    as _i588;
import '../../domain/repositories/resturants/resturants_repo.dart' as _i714;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i714.ResturantsRepo>(
      () => _i764.ResturantsRepoImpl(gh<_i388.ApiClient>()),
    );
    gh.lazySingleton<_i588.ProductPopularRepo>(
      () => _i180.ProductPopularRepoImpl(gh<_i388.ApiClient>()),
    );
    gh.lazySingleton<_i220.ConfigurationRepo>(
      () => _i901.ConfigurationRepoImpl(gh<_i388.ApiClient>()),
    );
    gh.lazySingleton<_i588.BannerRepo>(
      () => _i855.BannerRepoImpl(gh<_i388.ApiClient>()),
    );
    gh.lazySingleton<_i925.CampaignsRepo>(
      () => _i964.CampaignsRepoImpl(gh<_i388.ApiClient>()),
    );
    gh.lazySingleton<_i343.CategoriesRepo>(
      () => _i361.CategoriesRepoImpl(gh<_i388.ApiClient>()),
    );
    return this;
  }
}
