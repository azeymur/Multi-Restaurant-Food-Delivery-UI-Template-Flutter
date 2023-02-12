// Type represent customer entity
import 'package:food_delivery_multi_template/model/address.dart';
import 'package:food_delivery_multi_template/model/entity.dart';

class Customer extends Entity {
  // Customer's first and last name
  final String fullName;
  // Customer's user name
  final String username;
  // Customer's email address
  final String email;
  // Image name for the customer
  final String image;
  // Customer's phone number
  final String phone;
  // List of the addresses for the customer
  final List<Address> addresses = [];

  Customer({
    required super.id,
    required this.fullName,
    required this.username,
    required this.email,
    this.image = "no_image",
    this.phone = "",
  });

  @override
  List<Object?> get props =>
      [id, fullName, username, email, image, phone, addresses];
}
