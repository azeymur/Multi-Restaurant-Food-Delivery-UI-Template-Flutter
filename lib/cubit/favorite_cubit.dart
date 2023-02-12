import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_multi_template/globals.dart';
import 'package:food_delivery_multi_template/locator.dart';
import 'package:food_delivery_multi_template/model/favorite.dart';
import 'package:food_delivery_multi_template/service/service.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final Service service = getIt<Service>();

  FavoriteCubit() : super(FavoriteState.empty());

  void getFavorites() async {
    final favorites = await service.getFavorites(Globals.loggedCustomerId);
    emit(FavoriteState(favorites.toList()));
  }

  void toggleFavorite(String productId) async {
    final favorite =
        await service.getFavorite(Globals.loggedCustomerId, productId);

    if (favorite != null) {
      await service.deleteFavorite(favorite.id);
    } else {
      await service.addFavorite(Globals.loggedCustomerId, productId);
    }

    final favorites = await service.getFavorites(Globals.loggedCustomerId);
    emit(FavoriteState(favorites.toList()));
  }
}

class FavoriteState extends Equatable {
  final List<Favorite> favorites;

  const FavoriteState(this.favorites);

  factory FavoriteState.empty() {
    return const FavoriteState([]);
  }

  @override
  List<Object?> get props => [favorites];
}
