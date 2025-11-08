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
import '../../data/repositories/homeRepo/home_repo_impl.dart' as _i1053;
import '../../domain/repositories/homeRepo/home_repo.dart' as _i426;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i426.HomeRepo>(
      () => _i1053.HomeRepoImpl(gh<_i388.ApiClient>()),
    );
    return this;
  }
}
