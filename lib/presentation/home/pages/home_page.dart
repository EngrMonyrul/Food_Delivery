import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_resturant_app/presentation/home/bloc/home_bloc.dart';
import 'package:food_resturant_app/presentation/home/bloc/home_events.dart';
import 'package:food_resturant_app/presentation/home/bloc/home_states.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/banner_item.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/banner_shimmer.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/categories_shimmer.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/category_item.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/custom_banner.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/food_campaign_item.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/food_campaign_shimmer.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/home_page_appbar.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/popular_food_item.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/popular_food_shimmer.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/restaurant_shimmer.dart';
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

  //---> init
  @override
  void initState() {
    context.read<HomeBloc>().add(LoadHomeData());
    super.initState();
  }

  //---> build method
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Scaffold(
      //---> appbar
      appBar: HomePageAppbar(bottomHeight: 50),

      //---> body
      body: SingleChildScrollView(
        child: Column(
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
                if (true) {
                  return BannerShimmer();
                } else {
                  return Column(
                    children: [
                      CarouselSlider.builder(
                        itemCount: 10,
                        itemBuilder: (context, index, realIndex) {
                          return SizedBox(
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(15),
                              child: CustomNetworkImage(
                                imageUrl:
                                    "https://img.freepik.com/free-psd/food-menu-restaurant-facebook-cover-banner-template_120329-4875.jpg?semt=ais_hybrid&w=740&q=80",
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
                          children: List.generate(10, (index) {
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
                }
              },
            ),

            //----> category banner
            BlocBuilder<HomeBloc, HomeStates>(
              builder: (context, state) {
                if (true) {
                  return CategoriesShimmer();
                } else {
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
                          children: List.generate(20, (index) {
                            return CategoryItem(
                              itemImage:
                                  "https://cdn-icons-png.freepik.com/512/8848/8848967.png",
                              itemTitle: "Fast Food",
                            );
                          }),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
            SizedBox(height: 10),

            //----> popular food banner
            BlocBuilder<HomeBloc, HomeStates>(
              /*buildWhen: (previous, current) {
                if (previous is HomeDataLoaded || current is HomeDataLoaded) {
                  return previous;
                }

                return false;
              },*/
              builder: (context, state) {
                if (true) {
                  return PopularFoodShimmer();
                } else {
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
                          children: List.generate(20, (index) {
                            return PopularFoodItem();
                          }),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),

            //---> food campaign banner
            BlocBuilder<HomeBloc, HomeStates>(
              builder: (context, state) {
                if (true) {
                  return FoodCampaignShimmer().padAt(top: 20);
                } else {
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
                          children: List.generate(20, (index) {
                            return FoodCampaignItem();
                          }),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),

            //---> restaurant
            BlocBuilder<HomeBloc, HomeStates>(
              builder: (context, state) {
                if (true) {
                  return RestaurantShimmer().padAt(top: 20);
                } else {
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
                          children: List.generate(20, (index) {
                            return FoodCampaignItem();
                          }),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),

            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
