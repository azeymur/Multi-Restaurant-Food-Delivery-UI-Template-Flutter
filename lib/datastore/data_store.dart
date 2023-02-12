import 'package:food_delivery_multi_template/model/entity.dart';

// interface for basic CRUD operations.
abstract class DataStore<T extends Entity> {
  abstract List<T> items;

  // Add the entity
  Future<T> add(T item);

  // Update the entity
  Future<bool> update(T item);

  // Delete entity by id
  Future<bool> delete(String id);

  // Delete all entities
  Future<bool> deleteAll();

  // Get Entity by id
  Future<T> get(String id);

  // Get all Entities.
  Future<List<T>> getAll();

  // Get a result by parametrized query.
  Future<Iterable<T>> getBy(bool Function(T) predicate);

  // Is there at least one entity?
  Future<bool> isExist(bool Function(T) predicate);
}
