// ignore_for_file: inference_failure_on_instance_creation, inference_failure_on_untyped_parameter, avoid_dynamic_calls

import 'dart:collection';
import 'dart:developer';

import 'package:ferry/ferry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final typePostPolicy = {
  'Query': TypePolicy(
    fields: {
      'posts': FieldPolicy(
        keyArgs: const [],
        // read: (existing, options) => existing,
        merge: (existing, incoming, _) {
          log(existing.toString());
          log(existing.runtimeType.toString());
          // return incoming;
          final merged = (LinkedHashSet<dynamic>(
            equals: jsonMapEquals,
            hashCode: const DeepCollectionEquality().hash,
          )
                ..addAll(
                  (existing as Map<dynamic, dynamic>?)?['data'] as Iterable,
                )
                ..addAll(
                  (incoming as Map<dynamic, dynamic>?)?['data'] as Iterable,
                ))
              .toList();
          return merged.toList();
        },
      ),
    },
  ),
};
