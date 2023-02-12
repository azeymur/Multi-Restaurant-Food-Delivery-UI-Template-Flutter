import 'package:flutter/material.dart';
import 'package:food_delivery_multi_template/localization/locals.dart';
import 'package:food_delivery_multi_template/model/place.dart';
import 'package:food_delivery_multi_template/widget/star_rating_bar.dart';
import 'package:intl/intl.dart';

class PlaceListTile extends StatelessWidget {
  final Place place;
  final bool isFavorite;

  const PlaceListTile({
    required this.place,
    required this.isFavorite,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final locals = Locals.of(context);
    final titleSmall = themeData.textTheme.titleSmall;
    final bodyMedium = themeData.textTheme.bodyMedium;
    final currency = NumberFormat.currency(symbol: '\$');

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed("/placedetail", arguments: place.id);
            },
            child: Container(
              width: 160.0,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                color: themeData.cardColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      child: Image.asset(
                        "assets/${place.image}.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        StarRatingBar(
                          rating: place.averageRating,
                          size: 16.0,
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          place.name,
                          style: titleSmall,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 4.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.schedule,
                              size: 20,
                              color: themeData.colorScheme.primary,
                            ),
                            const SizedBox(width: 2.0),
                            Text(
                              "${place.deliveryTime}${locals.min_}",
                              style: bodyMedium,
                              maxLines: 1,
                            ),
                            const SizedBox(width: 2.0),
                            Icon(
                              Icons.delivery_dining,
                              size: 20.0,
                              color: themeData.colorScheme.primary,
                            ),
                            const SizedBox(width: 2.0),
                            Text(
                              currency.format(place.deliveryPrice),
                              style: bodyMedium,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: isFavorite,
            child: Positioned(
              right: 12.0,
              top: 12.0,
              child: Icon(
                Icons.favorite,
                color: themeData.colorScheme.primary,
                size: 30.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
