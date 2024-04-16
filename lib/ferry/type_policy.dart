import 'dart:collection';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:ferry/ferry.dart';

final typePolicies = {
  'Query': TypePolicy(
    fields: {
      'posts': FieldPolicy(
        keyArgs: const [],
        merge: (existing, incoming, _) {
          log(existing.toString());
          log(existing.runtimeType.toString());
          // return incoming;
          final merged = (LinkedHashSet<dynamic>(
            equals: jsonMapEquals,
            hashCode: const DeepCollectionEquality().hash,
          )
                ..addAll(
                  ((existing as Map<dynamic, dynamic>?)?['data']
                          as Iterable?) ??
                      [],
                )
                ..addAll(
                  (incoming as Map<dynamic, dynamic>?)?['data'] as Iterable,
                ))
              .toList();
          final res = incoming?..['data'] = merged.toList();
          return res;
        },
      ),
    },
  ),
};
