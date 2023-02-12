import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_multi_template/cubit/favorite_cubit.dart';
import 'package:food_delivery_multi_template/cubit/home_cubit.dart';
import 'package:food_delivery_multi_template/cubit/my_account_cubit.dart';
import 'package:food_delivery_multi_template/cubit/place_detail_cubit.dart';

class BlocProviders {
  BlocProviders._();

  static get getProviders => [
        BlocProvider(create: (_) => HomeCubit()),
        BlocProvider(create: (_) => MyAccountCubit()),
        BlocProvider(create: (_) => PlaceDetailCubit()),
        BlocProvider(create: (_) => FavoriteCubit()..getFavorites()),
      ];
}
