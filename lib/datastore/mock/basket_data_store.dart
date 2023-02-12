import 'package:food_delivery_multi_template/datastore/mock/mock_data_store.dart';
import 'package:food_delivery_multi_template/model/basket_item.dart';
import 'package:uuid/uuid.dart';

//Mock data store with fake entities to test.
class BasketDataStore extends MockDataStore<BasketItem> {
  @override
  List<BasketItem> items = [
    BasketItem(
      id: const Uuid().v4().toString(),
      productName: "Chicken Fajitas",
      productImage: "mi_chicken_fajitas",
      unitPrice: 15.0,
      placeName: "Darapti Chicken & Meat",
      dateGmt: DateTime.now().toUtc(),
      ingredients: "Onion",
      extrasAndOptions: "Apple slice · Mushroom",
      quantity: 1,
    ),
  ];
}
