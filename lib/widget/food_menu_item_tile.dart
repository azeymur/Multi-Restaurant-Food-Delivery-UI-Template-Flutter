import 'package:flutter/material.dart';
import 'package:food_delivery_multi_template/model/food_menu_item.dart';
import 'package:intl/intl.dart';

class FoodMenuItemTile extends StatelessWidget {
  final FoodMenuItem item;
  final String placeName;

  const FoodMenuItemTile({
    required this.item,
    required this.placeName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final titleSmall = themeData.textTheme.titleSmall;
    final bodyMedium = themeData.textTheme.bodyMedium;
    final currency = NumberFormat.currency(symbol: '\$');

    return GestureDetector(
      onTap: () {
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
              child: Image.asset(
                "assets/${item.image}.jpg",
                fit: BoxFit.cover,
                width: 80.0,
                height: 80.0,
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    item.name,
                    style: titleSmall,
                    maxLines: 2,
                  ),
                  Visibility(
                    visible: item.description.isNotEmpty,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 4.0),
                        Text(
                          item.description,
                          style: bodyMedium,
                          maxLines: 2,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              currency.format(item.price),
              style: titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
