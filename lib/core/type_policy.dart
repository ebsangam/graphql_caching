// ignore_for_file: inference_failure_on_instance_creation, inference_failure_on_untyped_parameter, avoid_dynamic_calls

import 'dart:collection';

import 'package:ferry/ferry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final typePolicies = {
  'Query': TypePolicy(
    fields: {
      'posts': FieldPolicy(
        keyArgs: const [],
        merge: (existing, incoming, _) {
          final merged = LinkedHashSet<dynamic>(
            equals: jsonMapEquals,
            hashCode: const DeepCollectionEquality().hash,
          )
            ..addAll((existing?['data'] as Iterable?) ?? [])
            ..addAll((incoming?['data'] as Iterable?) ?? []);
          return incoming?..['data'] = merged.toList();
        },
      ),
    },
  ),
};
