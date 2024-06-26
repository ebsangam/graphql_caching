import 'dart:async';
import 'dart:developer';

import 'package:ferry_store/ferry_store.dart';
import 'package:rxdart/rxdart.dart';

class MemStore extends Store {
  MemStore([
    Map<String, Map<String, dynamic>> initialData = const {},
    JsonEquals? jsonEquals,
  ])  : _valueStream = BehaviorSubject.seeded(initialData),
        _jsonEquals = jsonEquals ?? jsonMapEquals {
    _valueStream.listen((value) {
      log(value.keys.toString());
    });
  }

  final BehaviorSubject<Map<String, Map<String, dynamic>?>> _valueStream;
  final JsonEquals _jsonEquals;

  @override
  Iterable<String> get keys => _valueStream.value.keys;

  @override
  Stream<Map<String, dynamic>?> watch(String dataId, {bool distinct = true}) {
    final stream = _valueStream.map((data) => data[dataId]);
    if (distinct) {
      return stream.distinct(_jsonEquals);
    }
    return stream;
  }

  @override
  Map<String, dynamic>? get(String dataId) => _valueStream.value[dataId];

  @override
  void put(String dataId, Map<String, dynamic>? value) => _valueStream.add(
        Map.from(_valueStream.value)..addAll({dataId: value}),
      );

  @override
  void putAll(Map<String, Map<String, dynamic>?> data) => _valueStream.add(
        Map.from(_valueStream.value)..addAll(data),
      );

  @override
  void delete(String dataId) => _valueStream.add(
        Map.from(_valueStream.value)..remove(dataId),
      );

  @override
  void deleteAll(Iterable<String> dataIds) => _valueStream.add(
        Map.from(_valueStream.value)
          ..removeWhere((key, _) => dataIds.contains(key)),
      );

  @override
  void clear() => _valueStream.add({});

  @override
  Future<void> dispose() => _valueStream.close();
}
