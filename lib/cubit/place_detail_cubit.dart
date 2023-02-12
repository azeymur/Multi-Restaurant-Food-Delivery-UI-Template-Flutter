import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_multi_template/globals.dart';
import 'package:food_delivery_multi_template/locator.dart';
import 'package:food_delivery_multi_template/model/place.dart';
import 'package:food_delivery_multi_template/service/service.dart';

class PlaceDetailCubit extends Cubit<PlaceDetailState> {
  final Service service = getIt<Service>();

  PlaceDetailCubit() : super(const InitialPlaceDetailState());

  void getPlace(String placeId) async {
    final product = await service.getPlace(Globals.loggedCustomerId, placeId);

    emit(LoadedPlaceDetailState(product));
  }
}

@immutable
abstract class PlaceDetailState extends Equatable {
  const PlaceDetailState();
}

class InitialPlaceDetailState extends PlaceDetailState {
  const InitialPlaceDetailState();

  @override
  List<Object?> get props => [];
}

class LoadedPlaceDetailState extends PlaceDetailState {
  final Place place;

  const LoadedPlaceDetailState(this.place);

  @override
  List<Object?> get props => [place];
}
