import 'package:food_delivery_multi_template/model/entity.dart';

class OrderItem extends Entity {
  // Id of the associated order
  final String orderId;
  // Name of the place
  final String placeName;
  // Unit price of the associated product on the order date
  final double unitPrice;
  // Order amount
  final int quantity;
  // Deselected ingredients ready to be displayed
  final String ingredients;
  // Selected choices ready to be displayed
  final String extrasAndOptions;
  // Name of the associated product
  final String productName;
  // Image of the associated product
  final String productImage;

  // Calculated total value
  double get total {
    return unitPrice * quantity;
  }

  const OrderItem({
    required super.id,
    required this.orderId,
    required this.placeName,
    required this.unitPrice,
    required this.quantity,
    this.ingredients = "",
    this.extrasAndOptions = "",
    this.productName = "",
    this.productImage = "no_image",
  });

  @override
  List<Object?> get props => [
        id,
        orderId,
        placeName,
        unitPrice,
        quantity,
        ingredients,
        extrasAndOptions,
        productName,
        productImage,
      ];
}
