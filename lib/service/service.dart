import 'package:food_delivery_multi_template/datastore/data_store.dart';
import 'package:food_delivery_multi_template/datastore/mock/address_data_store.dart';
import 'package:food_delivery_multi_template/datastore/mock/basket_data_store.dart';
import 'package:food_delivery_multi_template/datastore/mock/cuisine_data_store.dart';
import 'package:food_delivery_multi_template/datastore/mock/customer_data_store.dart';
import 'package:food_delivery_multi_template/datastore/mock/favorite_data_store.dart';
import 'package:food_delivery_multi_template/datastore/mock/place_data_store.dart';
import 'package:food_delivery_multi_template/datastore/mock/rating_data_store.dart';
import 'package:food_delivery_multi_template/locator.dart';
import 'package:food_delivery_multi_template/model/address.dart';
import 'package:food_delivery_multi_template/model/basket_item.dart';
import 'package:food_delivery_multi_template/model/cuisine.dart';
import 'package:food_delivery_multi_template/model/customer.dart';
import 'package:food_delivery_multi_template/model/favorite.dart';
import 'package:food_delivery_multi_template/model/place.dart';
import 'package:food_delivery_multi_template/model/rating.dart';
import 'package:food_delivery_multi_template/service/sort_by.dart';
import 'package:uuid/uuid.dart';

//Mock service that works with mock data stores for testing.
class Service {
  DataStore<Address> dataAddress = getIt<AddressDataStore>();
  DataStore<BasketItem> dataBasket = getIt<BasketDataStore>();
  DataStore<Cuisine> dataCuisine = getIt<CuisineDataStore>();
  DataStore<Customer> dataCustomer = getIt<CustomerDataStore>();
  DataStore<Favorite> dataFavorite = getIt<FavoriteDataStore>();
  DataStore<Place> dataPlace = getIt<PlaceDataStore>();
  DataStore<Rating> dataRating = getIt<RatingDataStore>();

  // Methods for Cuisine entity

  Future<List<Cuisine>> getCuisines(String? name) async {
    final result = await dataCuisine.getBy((i) =>
        name == null || i.name.toLowerCase().contains(name.toLowerCase()));
    final cuisines = result.toList();
    cuisines.sort((a, b) => a.name.compareTo(b.name));
    return cuisines;
  }

  // Methods for place entity

  Future<Place> getPlace(String customerId, String id) async {
    final place = await dataPlace.get(id);

    int ratingCount =
        (await dataRating.getBy((r) => r.placeId == place.id)).length;
    double averageRating;

    if (ratingCount == 0) {
      averageRating = 0;
    } else {
      final int totalStar =
          (await dataRating.getBy((r) => r.placeId == place.id))
              .fold(0, (previous, item) => previous + item.star);
      averageRating = totalStar / ratingCount;
    }

    bool isFavorite = await dataFavorite
        .isExist((f) => f.customerId == customerId && f.placeId == place.id);

    return place.copyWith(
        averageRating: averageRating,
        ratingCount: ratingCount,
        isFavorite: isFavorite);
  }

  Future<List<Place>> getPlaces(String customerId,
      {String? cuisineId,
      String? key,
      bool onlyFavorites = false,
      bool onlyNew = false,
      bool onlyFeatured = false,
      bool onlyPopular = false,
      SortBy sortBy = SortBy.unsorted}) async {
    List<Place> places = [];

    final result = (await dataPlace.getBy((p) =>
        (cuisineId == null || p.cuisineIds.contains(cuisineId)) &&
        (key == null || p.name.toLowerCase().contains(key.toLowerCase())) &&
        (onlyNew == false || p.isNew) &&
        (onlyFeatured == false || p.isFeatured) &&
        (onlyPopular == false || p.isPopular)));

    for (var item in result) {
      int ratingCount = 0;
      double averageRating = 0.0;
      bool isFavorite = false;

      ratingCount =
          (await dataRating.getBy((r) => r.placeId == item.id)).length;

      if (ratingCount == 0) {
        averageRating = 0;
      } else {
        final int totalStar =
            (await dataRating.getBy((r) => r.placeId == item.id))
                .fold(0, (previous, item) => previous + item.star);
        averageRating = totalStar / ratingCount;
      }

      isFavorite = await dataFavorite
          .isExist((f) => f.customerId == customerId && f.placeId == item.id);

      final place = item.copyWith(
        averageRating: averageRating,
        ratingCount: ratingCount,
        isFavorite: isFavorite,
      );

      places.add(place);
    }

    places =
        places.where((p) => onlyFavorites == false || p.isFavorite).toList();

    switch (sortBy) {
      case SortBy.nameAZ:
        places.sort((a, b) => a.name.compareTo(b.name));
        break;
      case SortBy.nameZA:
        places.sort((a, b) => b.name.compareTo(a.name));
        break;
      case SortBy.highestRate:
        places.sort((a, b) => (b.averageRating - a.averageRating).round());
        break;
      case SortBy.rateCount:
        places.sort((a, b) => b.ratingCount - a.ratingCount);
        break;
      default:
        break;
    }

    return places;
  }

  // Methods for Customer entity

  Future<Customer> getCustomer(String id) async {
    return await dataCustomer.get(id);
  }

  Future<bool> updateCustomer(
    String id,
    String fullName,
    String username,
    String email, {
    String image = "no_image",
    String phone = "",
  }) async {
    final customer = Customer(
        id: id,
        fullName: fullName,
        username: username,
        email: email,
        image: image);

    return await dataCustomer.update(customer);
  }

  // Methods for BasketItem entity

  Future<BasketItem> getBasketItem(String id) async {
    return await dataBasket.get(id);
  }

  Future<BasketItem> addBasketItem(
    String productName,
    String productImage,
    String placeName,
    double unitPrice,
    int quantity, {
    String? ingredients,
    String? extrasAndOptions,
  }) async {
    final result = await dataBasket.getBy((i) =>
        i.productName == productName &&
        i.unitPrice == unitPrice &&
        i.placeName == placeName &&
        (ingredients == null || i.ingredients == ingredients) &&
        (extrasAndOptions == null || i.extrasAndOptions == extrasAndOptions));

    if (result.isEmpty) {
      final newItem = BasketItem(
        id: const Uuid().v4(),
        productName: productName,
        productImage: productImage,
        unitPrice: unitPrice,
        placeName: placeName,
        quantity: quantity,
        dateGmt: DateTime.now().toUtc(),
        ingredients: ingredients ?? "",
        extrasAndOptions: extrasAndOptions ?? "",
      );

      return await dataBasket.add(newItem);
    } else {
      final oldItem = result.first;
      final newItem = oldItem.copyWith(quantity: quantity + oldItem.quantity);
      await dataBasket.update(newItem);
      return newItem;
    }
  }

  Future<bool> updateBasketItem(String id, int quantity) async {
    final oldItem = await dataBasket.get(id);
    final newItem = oldItem.copyWith(quantity: quantity);

    return await dataBasket.update(newItem);
  }

  Future<List<BasketItem>> getBasketItems() async {
    final results = await dataBasket.getAll();

    results.sort((a, b) => a.dateGmt.compareTo(b.dateGmt));

    return results;
  }

  Future<bool> deleteBasketItem(String id) async {
    return await dataBasket.delete(id);
  }

  Future<bool> deleteAllBasketItems() async {
    return await dataBasket.deleteAll();
  }

  // Methods for Favorite entity

  Future<Favorite?> getFavorite(String customerId, String placeId) async {
    final favorites = await dataFavorite
        .getBy((f) => f.customerId == customerId && f.placeId == placeId);
    return favorites.isNotEmpty ? favorites.first : null;
  }

  Future<List<Favorite>> getFavorites(String customerId) async {
    final favorites =
        await dataFavorite.getBy((f) => f.customerId == customerId);
    return favorites.toList();
  }

  Future<Favorite> addFavorite(String customerId, String placeId) async {
    final favorite = Favorite(
      id: const Uuid().v4(),
      customerId: customerId,
      placeId: placeId,
    );

    return await dataFavorite.add(favorite);
  }

  Future<bool> deleteFavorite(String id) async {
    return await dataFavorite.delete(id);
  }

}
