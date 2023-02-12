import 'package:equatable/equatable.dart';
import 'package:food_delivery_multi_template/model/food_menu_item.dart';

class MenuCategory extends Equatable {
  final String name;
  final List<FoodMenuItem> menuItems;

  const MenuCategory({
    required this.name,
    required this.menuItems,
  });

  @override
  List<Object?> get props => [name, menuItems];
}
