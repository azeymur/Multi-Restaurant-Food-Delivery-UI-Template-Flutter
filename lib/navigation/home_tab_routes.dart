import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_multi_template/cubit/place_detail_cubit.dart';
import 'package:food_delivery_multi_template/page/home_page.dart';
import 'package:food_delivery_multi_template/page/place_detail_page.dart';

class HomeTabRoutes {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const HomePage());
      case "/placedetail":
        return MaterialPageRoute(
          builder: (_) {
            final productId = settings.arguments as String;
            return BlocProvider(
              create: (_) => PlaceDetailCubit(),
              child: PlaceDetailPage(productId),
            );
          },
        );
      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}
