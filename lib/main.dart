import 'package:flutter/material.dart';
import 'package:graphql_caching/app/app.dart';
import 'package:graphql_caching/core/injector.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await configureInjection();
  runApp(const App());
}
