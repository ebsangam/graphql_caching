import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_caching/post/view/post_page.dart';

part 'router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
