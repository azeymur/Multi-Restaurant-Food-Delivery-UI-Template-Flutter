import 'package:food_delivery_multi_template/model/entity.dart';

// Type represent rating entity
class Rating extends Entity {
  // Count of the stars
  final int star;
  // Customer's review
  final String text;
  // The id of the associated place
  final String placeId;
  // The id of the associated customer
  final String customerId;
  // The date of the rating was given
  final DateTime dateGmt;
  // Customer's first and last name
  final String customerFullName;

  const Rating({
    required super.id,
    required this.star,
    required this.text,
    required this.placeId,
    required this.customerId,
    required this.dateGmt,
    this.customerFullName = "",
  });

  Rating copyWith({String? customerFullName}) {
    return Rating(
        id: id,
        star: star,
        text: text,
        placeId: placeId,
        customerId: customerId,
        dateGmt: dateGmt,
        customerFullName: customerFullName ?? this.customerFullName);
  }

  @override
  List<Object?> get props => [
        id,
        star,
        text,
        placeId,
        customerId,
        dateGmt,
        customerFullName,
      ];
}
