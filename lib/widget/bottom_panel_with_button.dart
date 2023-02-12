import 'package:flutter/material.dart';
import 'package:food_delivery_multi_template/app_theme.dart';

//Creates a button inside a card with rounded top corners.
class BottomPanelWithButton extends StatelessWidget {
  final String caption;
  final void Function() callback;

  const BottomPanelWithButton({
    required this.caption,
    required this.callback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Positioned(
      left: 0.0,
      right: 0.0,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black.withOpacity(.4),
            ),
          ],
          color: themeData.cardColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ElevatedButton(
          onPressed: callback,
          style: AppTheme.stadiumElevatedButton,
          child: Text(caption),
        ),
      ),
    );
  }
}
