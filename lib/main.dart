import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/data/colors.dart';
import 'package:flutter_web_app_basic/routes/app_router_config.dart';
// import 'package:flutter_web_app_basic/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter-Web-App_Basic',
      theme: ThemeData(
        fontFamily: "HindSiliguri",
        brightness: Brightness.light,
        primaryColor: AppColor.primary,
      ),
      routerConfig: MyRouter().router,
    );
  }
}
