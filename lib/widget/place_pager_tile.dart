import 'package:flutter/material.dart';
import 'package:food_delivery_multi_template/localization/locals.dart';
import 'package:food_delivery_multi_template/model/place.dart';
import 'package:intl/intl.dart';

class PlacePagerTile extends StatelessWidget {
  final Place place;

  const PlacePagerTile(this.place, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final locals = Locals.of(context);
    final titleLarge =
        themeData.textTheme.titleLarge?.copyWith(color: Colors.white);
    final boldTitleMedium = themeData.textTheme.titleMedium
        ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold);
    final bodyMedium =
        themeData.textTheme.bodyLarge?.copyWith(color: Colors.white);
    final currency = NumberFormat.currency(symbol: '\$');

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/placedetail", arguments: place.id);
      },
      child: Stack(
        children: [
          Positioned(
            right: 0.0,
            left: 0.0,
            top: 0.0,
            bottom: 0.0,
            child: Image.asset(
              "assets/${place.image}.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                color: Colors.black.withOpacity(.4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(place.name, style: titleLarge),
                  const SizedBox(height: 4.0),
                  Text(place.description, style: bodyMedium),
                  const SizedBox(height: 4.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.star, size: 24.0, color: Colors.white),
                      const SizedBox(width: 4.0),
                      Text(
                        place.averageRating.toString(),
                        style: boldTitleMedium,
                      ),
                      const SizedBox(width: 4.0),
                      Text(
                        "(${place.ratingCount})",
                        style: bodyMedium,
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.schedule,
                        size: 24.0,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 4.0),
                      Text(
                        "${place.deliveryTime}${locals.min_}",
                        style: bodyMedium,
                      ),
                      const SizedBox(width: 4.0),
                      const Icon(Icons.delivery_dining,
                          size: 24.0, color: Colors.white),
                      const SizedBox(width: 4.0),
                      Text(
                        currency.format(place.deliveryPrice),
                        style: bodyMedium,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
