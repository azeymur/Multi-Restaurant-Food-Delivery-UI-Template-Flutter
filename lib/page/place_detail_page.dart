import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_multi_template/cubit/favorite_cubit.dart';
import 'package:food_delivery_multi_template/cubit/place_detail_cubit.dart';
import 'package:food_delivery_multi_template/localization/locals.dart';
import 'package:food_delivery_multi_template/model/menu_category.dart';
import 'package:food_delivery_multi_template/model/place.dart';
import 'package:food_delivery_multi_template/widget/food_menu_item_tile.dart';
import 'package:food_delivery_multi_template/widget/group_header.dart';
import 'package:food_delivery_multi_template/widget/loading.dart';
import 'package:food_delivery_multi_template/widget/star_rating_bar.dart';
import 'package:intl/intl.dart';

class PlaceDetailPage extends StatelessWidget {
  final String placeId;

  const PlaceDetailPage(this.placeId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PlaceDetailCubit>();
    final locals = Locals.of(context);

    cubit.getPlace(placeId);

    return Scaffold(
      appBar: AppBar(
        title: Text(locals.placeDetail),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context)
                .pushNamedAndRemoveUntil('/', ModalRoute.withName("/")),
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: BlocBuilder<PlaceDetailCubit, PlaceDetailState>(
        builder: (context, state) {
          if (state is InitialPlaceDetailState) {
            return const Loading();
          } else {
            state as LoadedPlaceDetailState;

            final place = state.place;

            return Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      child: AspectRatio(
                        aspectRatio: 2.0,
                        child: Image.asset(
                          "assets/${place.image}.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    _placeDetail(context, place),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: _menuCategories(
                              context, place.menuCategories, place.name),
                        ),
                      ),
                    ),
                  ],
                ),
                _favoriteButton(context)
              ],
            );
          }
        },
      ),
    );
  }

  Positioned _favoriteButton(BuildContext context) {
    final favCubit = context.read<FavoriteCubit>();

    return Positioned(
      top: 24.0,
      right: 24.0,
      child: BlocBuilder<FavoriteCubit, FavoriteState>(
        builder: (context, favState) {
          return GestureDetector(
            onTap: () {
              favCubit.toggleFavorite(placeId);
            },
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(.4),
              ),
              child: Icon(
                favState.favorites.any((item) => item.placeId == placeId)
                    ? Icons.favorite
                    : Icons.favorite_outline,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }

  List<Widget> _menuCategories(
      BuildContext context, List<MenuCategory> menuCategory, String placeName) {
    List<Widget> items = [];

    for (var category in menuCategory) {
      items.add(GroupHeader(category.name));
      for (var item in category.menuItems) {
        items.add(
          FoodMenuItemTile(item: item, placeName: placeName),
        );
      }
    }
    return items;
  }

  Padding _placeDetail(BuildContext context, Place place) {
    final locals = Locals.of(context);
    final themeData = Theme.of(context);
    final titleMedium = themeData.textTheme.titleMedium;
    final headlineSmall = themeData.textTheme.headlineSmall;
    final boldHeadlineSmall =
        headlineSmall?.copyWith(fontWeight: FontWeight.bold);
    final primaryTitleMedium = titleMedium?.copyWith(
        color: themeData.colorScheme.primary,
        decoration: TextDecoration.underline);
    final currency = NumberFormat.currency(symbol: '\$');

    return Padding(
      padding: const EdgeInsets.only(
          left: 16.0, top: 16.0, right: 16.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(place.name, style: boldHeadlineSmall),
          const SizedBox(height: 8.0),
          Text(place.description, style: titleMedium),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Icon(
                Icons.schedule,
                size: 24.0,
                color: themeData.colorScheme.primary,
              ),
              const SizedBox(width: 8.0),
              Text(
                "${place.deliveryTime}${locals.min_}",
                style: titleMedium,
              ),
              const SizedBox(width: 8.0),
              Icon(
                Icons.delivery_dining,
                size: 24.0,
                color: themeData.colorScheme.primary,
              ),
              const SizedBox(width: 8.0),
              Text(
                currency.format(place.deliveryPrice),
                style: titleMedium,
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              StarRatingBar(
                rating: place.averageRating,
                size: 24.0,
              ),
              const SizedBox(width: 8.0),
              Text(
                NumberFormat("0.0").format(place.averageRating),
                style: titleMedium,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                },
                child: Text(
                  "${locals.showReviews}(${place.ratingCount})",
                  style: primaryTitleMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
