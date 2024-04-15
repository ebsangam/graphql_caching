import 'dart:collection';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:ferry/ferry.dart';

final typePolicies = {
  'Query': TypePolicy(
    fields: {
      'posts': FieldPolicy(
        keyArgs: const [],
        // read: (existing, options) {
        //   return existing;
        // },
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
          return merged.toList();
        },
      ),
    },
  ),
};
