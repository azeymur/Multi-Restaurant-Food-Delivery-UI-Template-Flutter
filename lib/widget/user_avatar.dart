import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String image;
  const UserAvatar({required this.image, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10.0,
                color: Colors.black.withOpacity(0.4),
              ),
            ],
            color: themeData.cardColor,
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: SizedBox.fromSize(
              size: const Size.fromRadius(75),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
