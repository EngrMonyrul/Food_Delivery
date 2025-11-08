import 'package:equatable/equatable.dart';
import 'package:food_resturant_app/data/models/banners/banner_element.dart';
import 'package:food_resturant_app/data/models/banners/banner_item.dart';
import 'package:food_resturant_app/data/models/banners/restaurant.dart';
import 'package:food_resturant_app/data/models/campaigns/campaigns_item.dart';
import 'package:food_resturant_app/data/models/categories/categories.dart';
import 'package:food_resturant_app/data/models/configurations/configuration_model.dart';
import 'package:food_resturant_app/data/models/popular_products/product.dart';
import 'package:food_resturant_app/data/models/resturants/resturants_item.dart';

sealed class HomeStates extends Equatable {
  const HomeStates();

  @override
  List<Object?> get props => [];
}

class HomeDataInit extends HomeStates {}

class HomeDataLoading extends HomeStates {}

class HomeDataError extends HomeStates {
  final String? message;

  const HomeDataError({this.message});

  @override
  List<Object?> get props => [message];
}

class HomeDataLoadingMore extends HomeStates {}

class HomeDataLoaded extends HomeStates {
  final Configuration? config;
  final List<BannerElement>? banners;
  final List<Categories>? categories;
  final List<Product>? popularFoods;
  final List<CampaignsItem>? campaigns;
  final List<Restaurant>? restaurants;
  final String? message;

  const HomeDataLoaded({
    this.message,
    this.restaurants,
    this.campaigns,
    this.popularFoods,
    this.categories,
    this.banners,
    this.config,
  });

  HomeDataLoaded copyWith({
    Configuration? config,
    List<BannerElement>? banners,
    List<Categories>? categories,
    List<Product>? popularFoods,
    List<CampaignsItem>? campaigns,
    List<Restaurant>? restaurants,
    String? message,
  }) => HomeDataLoaded(
    message: message ?? this.message,
    categories: categories ?? this.categories,
    banners: banners ?? this.banners,
    config: config ?? this.config,
    campaigns: campaigns ?? this.campaigns,
    popularFoods: popularFoods ?? this.popularFoods,
    restaurants: restaurants ?? this.restaurants,
  );

  @override
  List<Object?> get props => [
    config,
    banners,
    categories,
    popularFoods,
    campaigns,
    restaurants,
    message,
  ];
}
