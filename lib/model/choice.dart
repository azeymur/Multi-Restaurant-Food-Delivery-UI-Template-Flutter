import 'package:equatable/equatable.dart';
import 'package:food_delivery_multi_template/model/choice_item.dart';

abstract class Choice extends Equatable {
  final String name;
  final List<ChoiceItem> choiceItems;

  const Choice({
    required this.name,
    required this.choiceItems,
  });

  @override
  List<Object?> get props => [name, choiceItems];
}

class Removables extends Choice {
  const Removables({required super.name, required super.choiceItems});
}

class Options extends Choice {
  const Options({required super.name, required super.choiceItems});
}

class Extras extends Choice {
  const Extras({required super.name, required super.choiceItems});
}
