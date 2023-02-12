import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_multi_template/globals.dart';
import 'package:food_delivery_multi_template/locator.dart';
import 'package:food_delivery_multi_template/model/cuisine.dart';
import 'package:food_delivery_multi_template/model/place.dart';
import 'package:food_delivery_multi_template/service/service.dart';

class HomeCubit extends Cubit<HomeState> {
  final Service service = getIt<Service>();

  HomeCubit() : super(const InitialHomeState());

  void load() async {
    final featuredPlaces =
        await service.getPlaces(Globals.loggedCustomerId, onlyFeatured: true);
    final cuisines = await service.getCuisines(null);
    final recentPlaces =
        await service.getPlaces(Globals.loggedCustomerId, onlyNew: true);
    final popularPlaces =
        await service.getPlaces(Globals.loggedCustomerId, onlyPopular: true);
    final favoritePlaces =
        await service.getPlaces(Globals.loggedCustomerId, onlyFavorites: true);

    emit(LoadedHomeState(
      featuredPlaces.toList(),
      cuisines.toList(),
      recentPlaces.toList(),
      popularPlaces.toList(),
      favoritePlaces.toList(),
    ));
  }
}

@immutable
abstract class HomeState extends Equatable {
  const HomeState();
}

class InitialHomeState extends HomeState {
  const InitialHomeState();

  @override
  List<Object?> get props => [];
}

class LoadedHomeState extends HomeState {
  final List<Place> featuredPlaces;
  final List<Cuisine> cuisines;
  final List<Place> recentPlaces;
  final List<Place> popularPlaces;
  final List<Place> favoritePlaces;

  const LoadedHomeState(
    this.featuredPlaces,
    this.cuisines,
    this.recentPlaces,
    this.popularPlaces,
    this.favoritePlaces,
  );

  @override
  List<Object?> get props => [
        featuredPlaces,
        cuisines,
        recentPlaces,
        popularPlaces,
        favoritePlaces,
      ];
}
