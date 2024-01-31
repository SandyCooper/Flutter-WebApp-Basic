import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/screens/home.dart';
import 'package:go_router/go_router.dart';

class MyRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        name: "home",
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: HomeScreen(),
          );
        },
      ),
    ],
  );
}
