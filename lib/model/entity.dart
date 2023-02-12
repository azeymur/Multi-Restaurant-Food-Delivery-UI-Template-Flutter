import 'package:equatable/equatable.dart';

// Base class for models
abstract class Entity extends Equatable {
  // Unique identifier for the object.
  final String id;

  const Entity({required this.id});
}
