import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/routes/app_router_constants.dart';
import 'package:flutter_web_app_basic/screens/containers/container3page.dart';
import 'package:flutter_web_app_basic/screens/containers/container4page.dart';
import 'package:flutter_web_app_basic/screens/home.dart';
import 'package:go_router/go_router.dart';

class MyRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        name: RouterConstants.homeRoute,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: HomeScreen(),
          );
        },
      ),
      GoRoute(
        path: "/container3/:someText/:anotherText",
        name: RouterConstants.container3Route,
        pageBuilder: (context, state) {
          return MaterialPage(
            child: Container3Page(someText: state.pathParameters,),
          );
        },
      ),
      GoRoute(
        path: "/container4",
        name: RouterConstants.container4Route,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: Container4Page(),
          );
        },
      ),
      
    ],
  );
}
