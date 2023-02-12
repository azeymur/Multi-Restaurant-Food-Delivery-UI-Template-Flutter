import 'package:food_delivery_multi_template/datastore/mock/mock_data_store.dart';
import 'package:food_delivery_multi_template/model/customer.dart';

// Mock data store with fake entities to test.
class CustomerDataStore extends MockDataStore<Customer> {
  @override
  List<Customer> items = [
    Customer(
        id: "cu001",
        username: "janedoe",
        fullName: "Jane Doe",
        email: "janedoe@gmail.com",
        image: "jane_doe"),
    Customer(
        id: "cu002",
        username: "johndoe",
        fullName: "John Doe",
        email: "johndoe@gmail.com",
        image: "john_doe"),
  ];
}
