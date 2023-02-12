import 'package:flutter/material.dart';
import 'package:food_delivery_multi_template/app_theme.dart';

//A button with two icons and a caption.
class ChicButton extends StatelessWidget {
  final IconData icon;
  final String caption;
  final void Function() callback;

  const ChicButton(
      {required this.icon,
      required this.caption,
      required this.callback,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final secondaryTitleMedium = themeData.textTheme.titleMedium
        ?.copyWith(color: AppTheme.secondaryTextColor(context));

    return GestureDetector(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: themeData.cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            Icon(icon, color: secondaryTitleMedium?.color, size: 26),
            const SizedBox(width: 20),
            Expanded(child: Text(caption, style: secondaryTitleMedium)),
            const SizedBox(width: 20),
            Icon(Icons.chevron_right,
                color: secondaryTitleMedium?.color, size: 30),
          ],
        ),
      ),
    );
  }
}
