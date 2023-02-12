import 'package:equatable/equatable.dart';

class ChoiceItem extends Equatable {
  final String name;
  final double price;
  final bool isDefault;

  const ChoiceItem({
    required this.name,
    this.price = 0.0,
    this.isDefault = false,
  });

  @override
  List<Object?> get props => [
        name,
        price,
        isDefault,
      ];
}
