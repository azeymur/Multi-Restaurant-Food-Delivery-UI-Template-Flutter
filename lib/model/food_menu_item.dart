import 'package:equatable/equatable.dart';
import 'package:food_delivery_multi_template/model/choice.dart';

class FoodMenuItem extends Equatable {
  // Name for the product
  final String name;
  // Description for the product
  final String description;
  // Current price of the product
  final double price;
  // Image of the menu item
  final String image;
  // Choices for this menu item.
  final List<Choice> choices;

  const FoodMenuItem({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.choices,
  });

  @override
  List<Object?> get props => [
        name,
        description,
        price,
        image,
        choices,
      ];
}
