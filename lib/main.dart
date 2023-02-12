import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:food_delivery_multi_template/app_theme.dart';
import 'package:food_delivery_multi_template/bloc_providers.dart';
import 'package:food_delivery_multi_template/localization/locals_delegate.dart';
import 'package:food_delivery_multi_template/locator.dart';
import 'package:food_delivery_multi_template/navigation/main_routes.dart';
import 'package:food_delivery_multi_template/navigation/navigator_keys.dart';

void main() {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) => runApp(const FoodDeliveryApp()));
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocProviders.getProviders,
      child: MaterialApp(
        theme: AppTheme.blueLightTheme, // color theme for light mode
        darkTheme: AppTheme.blueDarkTheme, // color theme for dark mode
        localizationsDelegates: const [
          LocalsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English, no country code
          //Locale('es', ''), //To add more language support
        ],
        onGenerateRoute: MainRoutes.generate,
        navigatorKey: NavigatorKeys.main,
      ),
    );
  }
}
