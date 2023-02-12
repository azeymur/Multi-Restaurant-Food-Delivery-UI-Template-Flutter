import 'package:food_delivery_multi_template/datastore/mock/address_data_store.dart';
import 'package:food_delivery_multi_template/datastore/mock/basket_data_store.dart';
import 'package:food_delivery_multi_template/datastore/mock/cuisine_data_store.dart';
import 'package:food_delivery_multi_template/datastore/mock/customer_data_store.dart';
import 'package:food_delivery_multi_template/datastore/mock/favorite_data_store.dart';
import 'package:food_delivery_multi_template/datastore/mock/place_data_store.dart';
import 'package:food_delivery_multi_template/datastore/mock/rating_data_store.dart';
import 'package:food_delivery_multi_template/service/service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupLocator() {
  getIt.registerSingleton<AddressDataStore>(AddressDataStore());
  getIt.registerSingleton<BasketDataStore>(BasketDataStore());
  getIt.registerSingleton<CuisineDataStore>(CuisineDataStore());
  getIt.registerSingleton<CustomerDataStore>(CustomerDataStore());
  getIt.registerSingleton<FavoriteDataStore>(FavoriteDataStore());
  getIt.registerSingleton<PlaceDataStore>(PlaceDataStore());
  getIt.registerSingleton<RatingDataStore>(RatingDataStore());
  
  getIt.registerFactory(() => Service());
}
