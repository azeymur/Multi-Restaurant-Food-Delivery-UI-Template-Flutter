import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_multi_template/cubit/favorite_cubit.dart';
import 'package:food_delivery_multi_template/localization/locals.dart';
import 'package:food_delivery_multi_template/model/place.dart';
import 'package:food_delivery_multi_template/widget/place_list_tile.dart';

class Showcase extends StatelessWidget {
  final String title;
  final List<Place> places;
  final void Function() callback;

  const Showcase(
      {required this.title,
      required this.places,
      required this.callback,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final titleLarge = themeData.textTheme.titleLarge;

    final locals = Locals.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(title, style: titleLarge),
              const Spacer(),
              GestureDetector(
                onTap: callback,
                child: Text(
                  locals.seeAll,
                  style: titleLarge?.copyWith(
                    color: themeData.colorScheme.primary,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 240.0,
          child: BlocBuilder<FavoriteCubit, FavoriteState>(
            builder: (context, favState) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: places.length,
                itemBuilder: (context, index) {
                  final place = places[index];
                  return PlaceListTile(
                    place: place,
                    isFavorite: favState.favorites
                        .any((item) => item.placeId == place.id),
                    key: UniqueKey(),
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }
}
