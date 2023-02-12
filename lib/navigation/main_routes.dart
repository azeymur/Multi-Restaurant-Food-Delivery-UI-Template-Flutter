import 'package:flutter/material.dart';
import 'package:food_delivery_multi_template/page/main_page.dart';

class MainRoutes {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const MainPage());
      default:
        return MaterialPageRoute(builder: (_) => const MainPage());
    }
  }
}
