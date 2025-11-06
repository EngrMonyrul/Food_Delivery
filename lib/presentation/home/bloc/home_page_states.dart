import 'package:equatable/equatable.dart';
import 'package:food_resturant_app/data/models/banners/banner_element.dart';
import 'package:food_resturant_app/data/models/categories/categories.dart';
import 'package:food_resturant_app/data/models/popular_products/product.dart';

sealed class HomePageStates extends Equatable {
  const HomePageStates();

  @override
  List<Object?> get props => [];
}

class HomePageInitialState extends HomePageStates {}

class HomePageLoadingState extends HomePageStates {}

class HomePageSuccessState extends HomePageStates {
  final String? message;
  final List<BannerElement>? banners;
  final List<Categories>? categories;
  final List<Product>? popularProducts;

  const HomePageSuccessState({
    this.message,
    this.banners,
    this.categories,
    this.popularProducts,
  });

  HomePageSuccessState copyWith({
    String? message,
    List<BannerElement>? banners,
    List<Categories>? categories,
    List<Product>? popularProducts,
  }) => HomePageSuccessState(
    message: message ?? this.message,
    banners: banners ?? this.banners,
    categories: categories ?? this.categories,
    popularProducts: popularProducts ?? this.popularProducts,
  );

  @override
  List<Object?> get props => [message, banners, categories, popularProducts];
}

class HomePageFailedState extends HomePageStates {
  final String? message;

  const HomePageFailedState({this.message});

  @override
  List<Object?> get props => [message];
}
