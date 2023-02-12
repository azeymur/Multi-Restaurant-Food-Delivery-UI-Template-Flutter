import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StarRatingBar extends StatelessWidget {
  final double rating;
  final double size;
  const StarRatingBar({required this.rating, required this.size, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return RatingBar(
      allowHalfRating: true,
      initialRating: rating,
      ignoreGestures: true,
      itemSize: size,
      ratingWidget: RatingWidget(
          full: Icon(Icons.star, color: primaryColor),
          half: Icon(Icons.star_half, color: primaryColor),
          empty: Icon(Icons.star_outline, color: primaryColor)),
      onRatingUpdate: (_) {},
    );
  }
}
