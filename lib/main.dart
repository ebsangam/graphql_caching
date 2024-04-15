// ignore_for_file: inference_failure_on_function_invocation

import 'package:flutter/material.dart';
import 'package:graphql_caching/app/app.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox('gqlCache');
  runApp(const App());
}
