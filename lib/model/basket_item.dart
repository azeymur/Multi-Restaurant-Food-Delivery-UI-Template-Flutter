import 'package:food_delivery_multi_template/model/entity.dart';

// Type represent item entity of the shopping cart
class BasketItem extends Entity {
  // Name of the associated product
  final String productName;
  // Image of the associated product
  final String productImage;
  // Unit price of the associated product
  final double unitPrice;
  // Name of the associated place
  final String placeName;
  // When the item added
  final DateTime dateGmt;
  // Selected ingredients ready to be displayed
  final String ingredients;
  // Selected choices ready to be displayed
  final String extrasAndOptions;
  // Number of items in the cart
  final int quantity;

  // Calculated total value
  double get total {
    return unitPrice * quantity;
  }

  const BasketItem({
    required super.id,
    required this.productName,
    required this.productImage,
    required this.unitPrice,
    required this.placeName,
    required this.dateGmt,
    required this.ingredients,
    required this.extrasAndOptions,
    required this.quantity,
  });

  BasketItem copyWith({int? quantity}) {
    return BasketItem(
      id: id,
      productName: productName,
      productImage: productImage,
      unitPrice: unitPrice,
      placeName: placeName,
      dateGmt: dateGmt,
      ingredients: ingredients,
      extrasAndOptions: extrasAndOptions,
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  List<Object?> get props => [
        id,
        productName,
        productImage,
        unitPrice,
        placeName,
        dateGmt,
        ingredients,
        extrasAndOptions,
        quantity,
      ];
}
