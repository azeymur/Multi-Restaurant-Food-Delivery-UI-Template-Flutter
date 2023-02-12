import 'package:flutter/material.dart';

class GroupHeader extends StatelessWidget {
  final String text;

  const GroupHeader(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final titleLarge = themeData.textTheme.titleLarge;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: themeData.cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Text(text, style: titleLarge),
      ),
    );
  }
}
