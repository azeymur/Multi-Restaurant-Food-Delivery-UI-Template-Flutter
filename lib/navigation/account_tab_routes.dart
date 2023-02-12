import 'package:flutter/material.dart';
import 'package:food_delivery_multi_template/page/my_account_page.dart';

class AccountTabRoutes {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const MyAccountPage());
      default:
        return MaterialPageRoute(builder: (_) => const MyAccountPage());
    }
  }
}
