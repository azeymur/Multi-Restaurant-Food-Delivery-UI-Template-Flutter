import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const _secondaryTextColorLightTheme = Color(0xFF616161);
  static const _secondaryTextColorDarkTheme = Color(0xFFE0E0E0);

  static secondaryTextColor(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.light
        ? _secondaryTextColorLightTheme
        : _secondaryTextColorDarkTheme;
  }

  static ButtonStyle stadiumElevatedButton = ElevatedButton.styleFrom(
      shape:
          const StadiumBorder()); 

  static ButtonStyle stadiumOutlinedButton(BuildContext context) {
    return OutlinedButton.styleFrom(
      shape: const StadiumBorder(),
      side:
          BorderSide(width: 2.0, color: Theme.of(context).colorScheme.primary),
    );
  }

  static ThemeData get amberLightTheme =>
      _lightTheme(Colors.amber.shade800, Colors.amber.shade600);

  static ThemeData get blueLightTheme =>
      _lightTheme(Colors.blue.shade700, Colors.blue.shade500);

  static ThemeData get cyanLightTheme =>
      _lightTheme(Colors.cyan.shade700, Colors.cyan.shade500);

  static ThemeData get deepOrangeLightTheme =>
      _lightTheme(Colors.deepOrange.shade600, Colors.deepOrange.shade400);

  static ThemeData get deepPurpleLightTheme =>
      _lightTheme(Colors.deepPurple.shade500, Colors.deepPurple.shade300);

  static ThemeData get greenLightTheme =>
      _lightTheme(Colors.green.shade600, Colors.green.shade400);

  static ThemeData get indigoLightTheme =>
      _lightTheme(Colors.indigo.shade500, Colors.indigo.shade300);

  static ThemeData get lightGreenLightTheme =>
      _lightTheme(Colors.lightGreen.shade700, Colors.lightGreen.shade500);

  static ThemeData get limeLightTheme =>
      _lightTheme(Colors.lime.shade800, Colors.lime.shade600);

  static ThemeData get orangeLightTheme =>
      _lightTheme(Colors.orange.shade800, Colors.orange.shade600);

  static ThemeData get pinkLightTheme =>
      _lightTheme(Colors.pink.shade500, Colors.pink.shade300);

  static ThemeData get purpleLightTheme =>
      _lightTheme(Colors.purple.shade500, Colors.purple.shade300);

  static ThemeData get redLightTheme =>
      _lightTheme(Colors.red.shade600, Colors.red.shade400);

  static ThemeData get tealLightTheme =>
      _lightTheme(Colors.teal.shade600, Colors.teal.shade400);

  static ThemeData get amberDarkTheme =>
      _darkTheme(Colors.amberAccent.shade700);

  static ThemeData get blueDarkTheme => _darkTheme(Colors.blueAccent.shade700);

  static ThemeData get cyanDarkTheme => _darkTheme(Colors.cyanAccent.shade400);

  static ThemeData get deepOrangeDarkTheme =>
      _darkTheme(Colors.deepOrangeAccent.shade400);

  static ThemeData get deepPurpleDarkTheme =>
      _darkTheme(Colors.deepPurpleAccent.shade200);

  static ThemeData get greenDarkTheme =>
      _darkTheme(Colors.greenAccent.shade700);

  static ThemeData get indigoDarkTheme =>
      _darkTheme(Colors.indigoAccent.shade200);

  static ThemeData get lightGreenDarkTheme =>
      _darkTheme(Colors.lightGreenAccent.shade700);

  static ThemeData get limeDarkTheme => _darkTheme(Colors.limeAccent.shade700);

  static ThemeData get orangeDarkTheme =>
      _darkTheme(Colors.orangeAccent.shade400);

  static ThemeData get pinkDarkTheme => _darkTheme(Colors.pinkAccent.shade400);

  static ThemeData get purpleDarkTheme =>
      _darkTheme(Colors.purpleAccent.shade400);

  static ThemeData get redDarkTheme => _darkTheme(Colors.redAccent.shade200);

  static ThemeData get tealDarkTheme => _darkTheme(Colors.tealAccent.shade400);

  static ThemeData _lightTheme(Color primary, Color tertiary) {
    return ThemeData(
      canvasColor: const Color(0xFFF2F2F2),
      colorScheme: ColorScheme.light(
        primary: primary,
        tertiary: tertiary,
      ),
    );
  }

  static ThemeData _darkTheme(Color primary) {
    return ThemeData(
      canvasColor: const Color(0xFF212121),
      colorScheme: ColorScheme.dark(
        primary: primary,
        secondary: primary,
      ),
    );
  }
}
