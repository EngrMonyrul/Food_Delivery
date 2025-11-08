import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:food_resturant_app/presentation/home/bloc/home_bloc.dart';
import 'package:food_resturant_app/presentation/home/bloc/home_events.dart';
import 'package:food_resturant_app/presentation/home/bloc/home_states.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/banner_item.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/category_item.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/custom_banner.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/food_campaign_item.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/home_page_appbar.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/home_page_loading_shimmer.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/popular_food_item.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/restaurent_item.dart';
import 'package:food_resturant_app/presentation/widgets/custom_network_image.dart';
import 'package:food_resturant_app/utils/extensions/context_ext.dart';
import 'package:food_resturant_app/utils/extensions/widget_ext.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //---> variables
  int _slideItemIndex = 0;
  final _scrollController = ScrollController();
  int _pagSearchValue = 0;

  //---> method
  void _paginationSearch() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.addListener(() {
        if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent) {
          _pagSearchValue++;
          context.read<HomeBloc>().add(
            LoadRestaurantMoreData(limit: 10, offset: _pagSearchValue),
          );
        }
      });
    });
  }

  //---> init
  @override
  void initState() {
    context.read<HomeBloc>().add(
      LoadHomeData(offset: _pagSearchValue, limit: 10),
    );
    super.initState();
  }

  //---> build method
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return BlocConsumer<HomeBloc, HomeStates>(
      listener: (context, state) async {
        if (state is HomeDataLoaded) {
          _paginationSearch();
        }
      },
      builder: (context, homeState) {
        if (homeState is HomeDataLoading || homeState is HomeDataInit) {
          return HomePageLoadingShimmer();
        }

        return Scaffold(
          //---> appbar
          appBar: HomePageAppbar(bottomHeight: 50),

          //---> body
          body: ListView(
            controller: _scrollController,
            physics: AlwaysScrollableScrollPhysics(),
            children: [
              SizedBox(height: 10),

              //---> banner items
              BlocBuilder<HomeBloc, HomeStates>(
                buildWhen: (previous, current) {
                  if (previous is HomeDataLoaded && current is HomeDataLoaded) {
                    return previous.banners != current.banners;
                  }
                  return false;
                },
                builder: (context, state) {
                  final banners = (state as HomeDataLoaded).banners;

                  return Column(
                    children: [
                      CarouselSlider.builder(
                        itemCount: banners?.length,
                        itemBuilder: (context, index, realIndex) {
                          final bannerItem = banners?[index];

                          return SizedBox(
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(15),
                              child: CustomNetworkImage(
                                imageUrl: bannerItem?.imageFullUrl ?? "",
                              ),
                            ),
                          );
                        },
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.5,
                          animateToClosest: true,
                          viewportFraction: 0.9,
                          enlargeCenterPage: true,
                          onPageChanged: (index, _) {
                            setState(() => _slideItemIndex = index);
                          },
                        ),
                      ),
                      SizedBox(height: 10),

                      //---> indicator
                      SizedBox(
                        height: 20,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(banners?.length ?? 0, (
                            index,
                          ) {
                            return CircleAvatar(
                              radius: _slideItemIndex == index ? 4 : 2,
                              backgroundColor: _slideItemIndex == index
                                  ? theme.colorScheme.primary
                                  : theme.colorScheme.outline,
                            ).padAt(all: 3);
                          }),
                        ),
                      ),
                    ],
                  );
                },
              ),

              //----> category banner
              BlocBuilder<HomeBloc, HomeStates>(
                buildWhen: (previous, current) {
                  if (previous is HomeDataLoaded && current is HomeDataLoaded) {
                    return previous.categories != current.categories;
                  }
                  return false;
                },
                builder: (context, state) {
                  final categories = (state as HomeDataLoaded).categories;

                  return Column(
                    children: [
                      CustomBanner(
                        bannerTitle: "Categories",
                        pressedOnViewAll: () {},
                      ).padAt(horizontal: 20),

                      //---> category items
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: List.generate(categories?.length ?? 0, (
                            index,
                          ) {
                            final categoryItem = categories?[index];

                            return CategoryItem(
                              itemImage: categoryItem?.imageFullUrl ?? "",
                              itemTitle: categoryItem?.name,
                            );
                          }),
                        ),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 10),

              //----> popular food banner
              BlocBuilder<HomeBloc, HomeStates>(
                buildWhen: (previous, current) {
                  if (previous is HomeDataLoaded && current is HomeDataLoaded) {
                    return previous.popularFoods != current.popularFoods;
                  }
                  return false;
                },
                builder: (context, state) {
                  final popularFoods = (state as HomeDataLoaded).popularFoods;

                  return Column(
                    children: [
                      CustomBanner(
                        bannerTitle: "Popular Food Nearby",
                        pressedOnViewAll: () {},
                      ).padAt(horizontal: 20),

                      //---> popular food items
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: List.generate(popularFoods?.length ?? 0, (
                            index,
                          ) {
                            final popularFoodItem = popularFoods?[index];

                            return PopularFoodItem(
                              image: popularFoodItem?.imageFullUrl,
                              itemName: popularFoodItem?.name,
                              restaurentName: popularFoodItem?.restaurantName,
                              price: (popularFoodItem?.price ?? 0).toDouble(),
                              rating: popularFoodItem?.avgRating,
                            );
                          }),
                        ),
                      ),
                    ],
                  );
                },
              ),

              //---> food campaign banner
              BlocBuilder<HomeBloc, HomeStates>(
                buildWhen: (previous, current) {
                  if (previous is HomeDataLoaded && current is HomeDataLoaded) {
                    return previous.campaigns != current.campaigns;
                  }
                  return false;
                },
                builder: (context, state) {
                  final foodCampaigns = (state as HomeDataLoaded).campaigns;

                  return Column(
                    children: [
                      CustomBanner(
                        bannerTitle: "Food Campaign",
                        pressedOnViewAll: () {},
                      ).padAt(horizontal: 20),

                      //---> food campaign items
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: List.generate(foodCampaigns?.length ?? 0, (
                            index,
                          ) {
                            final foodCampaignsItem = foodCampaigns?[index];

                            return FoodCampaignItem(
                              foodImage: foodCampaignsItem?.imageFullUrl,
                              foodName: foodCampaignsItem?.name,
                              restaurantName: foodCampaignsItem?.restaurantName,
                              price: (foodCampaignsItem?.price ?? 0).toDouble(),
                              star: (foodCampaignsItem?.avgRating)?.toDouble(),
                            );
                          }),
                        ),
                      ),
                    ],
                  );
                },
              ),

              //---> restaurant
              BlocBuilder<HomeBloc, HomeStates>(
                buildWhen: (previous, current) {
                  if (previous is HomeDataLoaded && current is HomeDataLoaded) {
                    return previous.restaurants != current.restaurants;
                  }
                  return false;
                },
                builder: (context, state) {
                  final restaurants = (state as HomeDataLoaded).restaurants;

                  return Column(
                    children: [
                      CustomBanner(
                        bannerTitle: "Restaurants",
                        pressedOnViewAll: () {},
                      ).padAt(horizontal: 20),

                      //---> food campaign items
                      Column(
                        children: List.generate(restaurants?.length ?? 0, (
                          index,
                        ) {
                          final restaurantItem = restaurants?[index];

                          return RestaurentItem(
                            imageUrl: restaurantItem?.coverPhotoFullUrl,
                            logoImage: restaurantItem?.logoFullUrl,
                            restaurantName: restaurantItem?.name,
                            restaurantAddress: restaurantItem?.address,
                            ratingStar: restaurantItem?.avgRating,
                          );
                        }),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 10),

              //---> more data loading
              BlocBuilder<HomeBloc, HomeStates>(
                builder: (context, state) {
                  if (state is HomeDataLoadingMore) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return SizedBox();
                  }
                },
              ),

              SizedBox(height: 50),
            ],
          ),
        );
      },
    );
  }
}
