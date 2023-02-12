import 'package:food_delivery_multi_template/model/entity.dart';

class Keyword extends Entity {
  final String keyword;
  final DateTime dateGmt = DateTime.now().toUtc();

  Keyword({required super.id, required this.keyword});

  @override
  List<Object?> get props => [keyword, dateGmt];
}
