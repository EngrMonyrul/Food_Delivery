import 'package:equatable/equatable.dart';

sealed class HomeEvents extends Equatable {
  const HomeEvents();

  @override
  List<Object?> get props => [];
}

class LoadHomeData extends HomeEvents {
  final int? offset;
  final int? limit;

  const LoadHomeData({this.limit, this.offset});

  @override
  List<Object?> get props => [offset, limit];
}

class LoadRestaurantMoreData extends HomeEvents {
  final int? offset;
  final int? limit;

  const LoadRestaurantMoreData({this.limit, this.offset});

  @override
  List<Object?> get props => [offset, limit];
}
