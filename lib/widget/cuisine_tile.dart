import 'package:flutter/material.dart';
import 'package:food_delivery_multi_template/model/cuisine.dart';

class CuisineTile extends StatelessWidget {
  final Cuisine cuisine;

  const CuisineTile({required this.cuisine, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final onPrimaryTitleSmall = themeData.textTheme.titleSmall
        ?.copyWith(color: themeData.colorScheme.onPrimary);

    return GestureDetector(
      onTap: () {
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 110.0,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.asset(
                  "assets/${cuisine.image}.jpg",
                  fit: BoxFit.cover,
                  width: 110,
                  height: 110,
                ),
                Positioned(
                  left: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    color: themeData.colorScheme.primary,
                    child: Text(
                      cuisine.name,
                      textAlign: TextAlign.center,
                      style: onPrimaryTitleSmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
