import 'package:food_delivery_multi_template/model/entity.dart';

// Type represent favorite entity
class Favorite extends Entity {
  // The id of the associated customer
  final String customerId;
  // The id of the associated place
  final String placeId;

  const Favorite({
    required super.id,
    required this.customerId,
    required this.placeId,
  });

  @override
  List<Object?> get props => [id, customerId, placeId];
}
