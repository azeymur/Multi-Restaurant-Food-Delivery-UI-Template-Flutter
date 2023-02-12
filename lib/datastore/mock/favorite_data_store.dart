import 'package:food_delivery_multi_template/datastore/mock/mock_data_store.dart';
import 'package:food_delivery_multi_template/model/favorite.dart';

// Mock data store with fake entities to test.
class FavoriteDataStore extends MockDataStore<Favorite> {
  @override
  List<Favorite> items = [
    const Favorite(id: "fav001", customerId: "cu001", placeId: "pl004"),
    const Favorite(id: "fav002", customerId: "cu001", placeId: "pl010"),
    const Favorite(id: "fav003", customerId: "cu001", placeId: "pl012"),
    const Favorite(id: "fav004", customerId: "cu001", placeId: "pl015"),
    const Favorite(id: "fav005", customerId: "cu001", placeId: "pl018"),
  ];
}
