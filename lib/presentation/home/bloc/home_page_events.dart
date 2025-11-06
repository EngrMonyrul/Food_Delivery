import 'package:equatable/equatable.dart';

sealed class HomePageEvents extends Equatable {
  const HomePageEvents();

  @override
  List<Object?> get props => [];
}

class FetchBannerItems extends HomePageEvents {}

class FetchCategories extends HomePageEvents {}

class FetchPopularProducts extends HomePageEvents {}
