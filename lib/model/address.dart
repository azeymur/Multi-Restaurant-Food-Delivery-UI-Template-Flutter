import 'package:food_delivery_multi_template/model/entity.dart';

// Type represent address entity
class Address extends Entity {
  // Id of the associated customer
  final String customerId;
  // Title of the address;
  final String title;
  // Receiver's first name
  final String firstName;
  // Receiver's last name
  final String lastName;
  // Address line 1
  final String address1;
  // City name for the address
  final String city;
  // Post Code
  final String postCode;
  // Name of the country
  final String country;
  // Company name for the address
  final String company;
  // Address line 2
  final String address2;
  // Name of the state
  final String state;
  // Receiver's phone number
  final String phone;

  const Address({
    required super.id,
    required this.customerId,
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.address1,
    required this.city,
    required this.postCode,
    required this.country,
    this.company = "",
    this.address2 = "",
    this.state = "",
    this.phone = "",
  });

  @override
  List<Object?> get props => [
        id,
        customerId,
        title,
        firstName,
        lastName,
        address1,
        city,
        postCode,
        country,
        company,
        address2,
        state,
        phone,
      ];

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.writeln("$firstName $lastName");
    if (company.isNotEmpty) buffer.writeln(company);
    buffer.writeln(address1);
    if (address2.isNotEmpty) buffer.writeln(address2);

    if (city.isNotEmpty) buffer.write("$city ");
    if (state.isNotEmpty) buffer.write("$state ");
    if (postCode.isNotEmpty) buffer.write("$postCode ");
    if (country.isNotEmpty) buffer.write(country);
    buffer.writeln();

    if (phone.isNotEmpty) buffer.writeln(phone);

    return buffer.toString().trimRight();
  }
}
