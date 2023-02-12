import 'package:food_delivery_multi_template/datastore/data_store.dart';
import 'package:food_delivery_multi_template/model/entity.dart';

// Base class that performs basic CRUD operations.
abstract class MockDataStore<T extends Entity> implements DataStore<T> {
  // Add the entity
  @override
  Future<T> add(T item) async {
    items.add(item);
    return Future.value(item);
  }

  // Update the entity
  @override
  Future<bool> update(T item) {
    final oldItem = items.firstWhere((element) => element.id == item.id);
    items.remove(oldItem);
    items.add(item);

    return Future.value(true);
  }

  // Delete entity by id
  @override
  Future<bool> delete(String id) {
    final oldItem = items.firstWhere((element) => element.id == id);
    items.remove(oldItem);

    return Future.value(true);
  }

  // Delete all entities
  @override
  Future<bool> deleteAll() {
    items.clear();
    return Future.value(true);
  }

  // Get Entity by id
  @override
  Future<T> get(String id) {
    var item = items.firstWhere((element) => element.id == id);
    return Future.value(item);
  }

  // Get all Entities.
  @override
  Future<List<T>> getAll() {
    return Future.value(items);
  }

  // Get a result by parametrized query.
  @override
  Future<Iterable<T>> getBy(bool Function(T) predicate) {
    var result = items.where(predicate);
    return Future.value(result);
  }

  // Is there at least one entity?
  @override
  Future<bool> isExist(bool Function(T) predicate) {
    var result = items.any(predicate);
    return Future.value(result);
  }
}
