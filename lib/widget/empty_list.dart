import 'package:flutter/material.dart';
import 'package:food_delivery_multi_template/app_theme.dart';

class EmptyList extends StatelessWidget {
  final String text;
  final IconData iconData;
  const EmptyList({required this.text, this.iconData = Icons.search, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final secondaryTitleLarge = Theme.of(context)
        .textTheme
        .titleLarge
        ?.copyWith(color: AppTheme.secondaryTextColor(context));

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: secondaryTitleLarge),
          const SizedBox(height: 16.0),
          Icon(iconData,
              color: AppTheme.secondaryTextColor(context), size: 120.0),
        ],
      ),
    );
  }
}
