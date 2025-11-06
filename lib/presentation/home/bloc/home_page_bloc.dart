import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_resturant_app/domain/repositories/banners/banner_repo.dart';
import 'package:food_resturant_app/domain/repositories/categories/categories_repo.dart';
import 'package:food_resturant_app/domain/repositories/product_popular/product_popular_repo.dart';
import 'package:food_resturant_app/presentation/home/bloc/home_page_events.dart';
import 'package:food_resturant_app/presentation/home/bloc/home_page_states.dart';
import '../../../utils/services/di_service.dart';

/// ### Home Page Bloc
/// __Handle all home page states and business logics__
class HomePageBloc extends Bloc<HomePageEvents, HomePageStates> {
  HomePageBloc() : super(HomePageInitialState()) {
    on<FetchBannerItems>(_fetchBannerItems);
    on<FetchCategories>(_fetchCategories);
    on<FetchPopularProducts>(_fetchPopularProducts);
  }

  // variables
  final _bannerRepo = di.get<BannerRepo>();
  final _categoriesRepo = di.get<CategoriesRepo>();
  final _popularProductRepo = di.get<ProductPopularRepo>();

  // fetching banner items
  Future<void> _fetchBannerItems(
    FetchBannerItems event,
    Emitter<HomePageStates> emit,
  ) async {
    emit(HomePageLoadingState());

    try {
      final successState = state as HomePageSuccessState;
      final bannerResponse = await _bannerRepo.getBanners();

      emit(
        successState.copyWith(
          banners: bannerResponse.data?.banners,
          message: bannerResponse.message,
        ),
      );
    } catch (e) {
      emit(HomePageFailedState(message: e.toString()));
    }
  }

  // fetching categories
  Future<void> _fetchCategories(
    FetchCategories event,
    Emitter<HomePageStates> emit,
  ) async {
    emit(HomePageLoadingState());

    try {
      final successState = state as HomePageSuccessState;
      final categoriesResponse = await _categoriesRepo.getCategories();

      emit(
        successState.copyWith(
          categories: categoriesResponse.data,
          message: categoriesResponse.message,
        ),
      );
    } catch (e) {
      emit(HomePageFailedState(message: e.toString()));
    }
  }

  // fetching popular products
  Future<void> _fetchPopularProducts(
    FetchPopularProducts event,
    Emitter<HomePageStates> emit,
  ) async {
    emit(HomePageLoadingState());

    try {
      final successState = state as HomePageSuccessState;
      final popularProductsResponse = await _popularProductRepo
          .getProductPopular();

      emit(
        successState.copyWith(
          message: popularProductsResponse.message,
          popularProducts: popularProductsResponse.data?.products,
        ),
      );
    } catch (e) {
      emit(HomePageFailedState(message: e.toString()));
    }
  }
}
