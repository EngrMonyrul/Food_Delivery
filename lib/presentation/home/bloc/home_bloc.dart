import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_resturant_app/domain/repositories/homeRepo/home_repo.dart';
import 'package:food_resturant_app/presentation/home/bloc/home_events.dart';
import 'package:food_resturant_app/presentation/home/bloc/home_states.dart';
import '../../../utils/services/di_service.dart';

class HomeBloc extends Bloc<HomeEvents, HomeStates> {
  HomeBloc() : super(HomeDataInit()) {
    on<LoadHomeData>(_onLoadHomeData);
    on<LoadRestaurantMoreData>(_onLoadRestaurantMoreData);
  }

  //---> variables
  final _homeRepo = di.get<HomeRepo>();

  //---> load home data
  Future<void> _onLoadHomeData(
    LoadHomeData event,
    Emitter<HomeStates> emit,
  ) async {
    emit(HomeDataLoading());
    var currentState = const HomeDataLoaded();

    try {
      // Parallel API calls
      final futures = <Future<void>>[];

      // Config
      futures.add(
        _homeRepo.getConfigurations().then((res) {
          currentState = currentState.copyWith(config: res.data);
          emit(currentState);
          log('✅ Config loaded');
        }),
      );

      // Banners
      futures.add(
        _homeRepo.getBanners().then((res) {
          currentState = currentState.copyWith(banners: res.data?.banners);
          emit(currentState);
          log('✅ Banners loaded');
        }),
      );

      // Categories
      futures.add(
        _homeRepo.getCategories().then((res) {
          currentState = currentState.copyWith(categories: res.data);
          emit(currentState);
          log('✅ Categories loaded');
        }),
      );

      // Campaigns
      futures.add(
        _homeRepo.getCampaignsItem().then((res) {
          currentState = currentState.copyWith(campaigns: res.data);
          emit(currentState);
          log('✅ Campaigns loaded');
        }),
      );

      // Popular Products
      futures.add(
        _homeRepo.getProductPopular().then((res) {
          currentState = currentState.copyWith(
            popularFoods: res.data?.products,
          );
          emit(currentState);
          log('✅ Popular foods loaded');
        }),
      );

      // Restaurants (first page)
      futures.add(
        _homeRepo
            .getResturantsItems(
              offset: event.offset ?? 0,
              limit: event.limit ?? 10,
            )
            .then((res) {
              currentState = currentState.copyWith(
                restaurants: res.data?.restaurants,
              );
              emit(currentState);
              log('✅ Restaurants loaded');
            }),
      );

      // wait for all to complete (optional)
      await Future.wait(futures);
      log('All API calls completed');
    } catch (e, s) {
      log('HomeBloc LoadHomeData failed: $e\n$s');
      emit(HomeDataError(message: e.toString()));
    }
  }

  //---> pagination for restaurants
  Future<void> _onLoadRestaurantMoreData(
    LoadRestaurantMoreData event,
    Emitter<HomeStates> emit,
  ) async {
    if (state is! HomeDataLoaded) return;
    final currentState = state as HomeDataLoaded;
    emit(HomeDataLoadingMore());

    try {
      final res = await _homeRepo.getResturantsItems(
        offset: event.offset ?? 0,
        limit: event.limit ?? 0,
      );

      final updatedRestaurants = [
        ...?currentState.restaurants,
        ...?res.data?.restaurants,
      ];

      emit(currentState.copyWith(restaurants: updatedRestaurants));
    } catch (e) {
      emit(HomeDataError(message: e.toString()));
    }
  }
}
