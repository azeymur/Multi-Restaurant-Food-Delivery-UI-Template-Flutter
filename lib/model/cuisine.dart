import 'package:food_delivery_multi_template/model/entity.dart';

//Type represent cuisine entity
class Cuisine extends Entity {
  // Name of the category
  final String name;
  // Image name for the category
  final String image;

  const Cuisine({
    required super.id,
    required this.name,
    required this.image,
  });

  @override
  List<Object?> get props => [id, name, image];
}
