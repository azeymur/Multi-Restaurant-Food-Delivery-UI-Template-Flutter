import 'package:food_delivery_multi_template/model/entity.dart';
import 'package:food_delivery_multi_template/model/menu_category.dart';

// Type represent place entty
class Place extends Entity {
  // Name for the place
  final String name;
  // Short description for the place
  final String description;
  // Image f the place
  final String image;
  // Minimum order amount for delivery
  final double deliveryPrice;
  // Minimum devery time
  final String deliveryTime;
  // District of place
  final String district;
  // Menu of the place
  final List<MenuCategory> menuCategories;
  // List of ids of associated cuisines
  final List<String> cuisineIds;
  // True, if product is featured
  final bool isFeatured;
  // True, if product is new
  final bool isNew;
  // True, if product is popular
  final bool isPopular;
  // True, if it is favorite item for the logged customer
  final bool isFavorite;
  // Average rating of the place
  final double averageRating;
  // Number of the reviews
  final int ratingCount;

  const Place({
    required super.id,
    required this.name,
    required this.description,
    required this.image,
    required this.deliveryPrice,
    required this.deliveryTime,
    required this.district,
    required this.menuCategories,
    required this.cuisineIds,
    this.averageRating = 0,
    this.ratingCount = 0,
    this.isFavorite = false,
    this.isFeatured = false,
    this.isNew = false,
    this.isPopular = false,
  });

  Place copyWith({double? averageRating, int? ratingCount, bool? isFavorite}) {
    return Place(
        id: id,
        name: name,
        description: description,
        image: image,
        deliveryPrice: deliveryPrice,
        deliveryTime: deliveryTime,
        district: district,
        menuCategories: menuCategories,
        cuisineIds: cuisineIds,
        averageRating: averageRating ?? this.averageRating,
        ratingCount: ratingCount ?? this.ratingCount,
        isFavorite: isFavorite ?? this.isFavorite);
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        image,
        deliveryPrice,
        deliveryTime,
        district,
        menuCategories,
        cuisineIds,
        isFeatured,
        isNew,
        isPopular,
        isFavorite,
        averageRating,
        ratingCount,
      ];
}
