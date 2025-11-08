import 'package:flutter/material.dart';
import 'package:food_resturant_app/utils/extensions/context_ext.dart';
import 'package:food_resturant_app/utils/extensions/widget_ext.dart';
import 'package:shimmer/shimmer.dart';

class HomePageLoadingShimmer extends StatelessWidget {
  const HomePageLoadingShimmer({super.key, this.bottomSize});

  final double? bottomSize;

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 15,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                    Spacer(),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight + (bottomSize ?? 0)),
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusGeometry.circular(15),
              ),
            ).padAt(bottom: 10),
          ),
        ),
      ),
      body: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  AspectRatio(
                    aspectRatio: 2.5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusGeometry.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(3, (index) {
                      return CircleAvatar(
                        radius: 1 == index ? 4 : 2,
                        backgroundColor: Colors.white,
                      ).padAt(all: 3);
                    }),
                  ),
                ],
              ).padAt(horizontal: 20),
              SizedBox(height: 30),
              Row(
                children: [
                  Container(height: 15, width: 100, color: Colors.white),
                  Spacer(),
                  Container(height: 10, width: 30, color: Colors.white),
                ],
              ).padAt(horizontal: 20),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: List.generate(20, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadiusGeometry.circular(
                                    10,
                                  ),
                                ),
                              ),
                              SizedBox(height: 7),
                              Container(
                                height: 15,
                                width: 40,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Container(height: 15, width: 100, color: Colors.white),
                  Spacer(),
                  Container(height: 10, width: 30, color: Colors.white),
                ],
              ).padAt(horizontal: 20),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: List.generate(20, (index) {
                    return Container(
                      width: screenSize.width * 0.4,
                      margin: EdgeInsetsGeometry.only(right: 10),
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusGeometry.circular(15),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Container(height: 15, width: 100, color: Colors.white),
                  Spacer(),
                  Container(height: 10, width: 30, color: Colors.white),
                ],
              ).padAt(horizontal: 20),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: List.generate(20, (index) {
                    return Container(
                      width: screenSize.width * .7,
                      margin: EdgeInsetsGeometry.only(right: 10),
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusGeometry.circular(15),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Container(height: 15, width: 100, color: Colors.white),
                  Spacer(),
                  Container(height: 10, width: 30, color: Colors.white),
                ],
              ).padAt(horizontal: 20),
              SizedBox(height: 10),
              Column(
                children: List.generate(3, (index) {
                  return Container(
                    margin: EdgeInsetsGeometry.only(bottom: 10),
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusGeometry.circular(15),
                    ),
                  );
                }),
              ).padAt(horizontal: 20),
            ],
          ),
        ),
      ),
    );
  }
}
