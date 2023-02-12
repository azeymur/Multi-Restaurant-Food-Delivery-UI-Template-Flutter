import 'package:food_delivery_multi_template/datastore/mock/mock_data_store.dart';
import 'package:food_delivery_multi_template/model/address.dart';

//Mock data store with fake entities to test.
class AddressDataStore extends MockDataStore<Address> {
  @override
  List<Address> items = [
    const Address(
      id: "a001",
      customerId: "cu001",
      title: "My Work",
      firstName: "Jane",
      lastName: "Doe",
      address1: "351 Morbi 16 quis eleifend turpis",
      address2: "Facilisis dui sem",
      city: "Duis",
      postCode: "67452",
      country: "Quisque",
    ),
    const Address(
      id: "a002",
      customerId: "cu001",
      title: "My House",
      firstName: "Jane",
      lastName: "Doe",
      address1: "8763 Duis in 227 nisi tristique",
      address2: "Curabitur id lacus magna",
      city: "Duis",
      postCode: "35535",
      country: "Quisque",
    ),
    const Address(
      id: "a003",
      customerId: "cu002",
      title: "Home",
      firstName: "John",
      lastName: "Doe",
      address1: "3882 Phasellus 23 ultricies sodales justo",
      address2: "Nunc fringilla iaculis libero",
      city: "Morbi",
      postCode: "56193",
      country: "Mauris",
    ),
  ];
}
