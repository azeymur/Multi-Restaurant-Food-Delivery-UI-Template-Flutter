import 'package:food_delivery_multi_template/datastore/mock/mock_data_store.dart';
import 'package:food_delivery_multi_template/model/cuisine.dart';

//Mock data store with fake entities to test.
class CuisineDataStore extends MockDataStore<Cuisine> {
  @override
  List<Cuisine> items = const [
    Cuisine(id: "cu001", name: "Bakery", image: "cuisine_bakery"),
    Cuisine(id: "cu002", name: "Burger", image: "cuisine_burger"),
    Cuisine(id: "cu003", name: "Chicken", image: "cuisine_chicken"),
    Cuisine(id: "cu004", name: "Dessert", image: "cuisine_dessert"),
    Cuisine(id: "cu005", name: "Meat", image: "cuisine_meat"),
    Cuisine(id: "cu006", name: "Pasta & Salad", image: "cuisine_pasta"),
  ];
}
