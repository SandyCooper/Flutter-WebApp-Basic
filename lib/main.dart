import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/data/colors.dart';
import 'package:flutter_web_app_basic/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter-Web-App_Basic',
      theme: ThemeData(
        fontFamily: "HindSiliguri",
        brightness: Brightness.light,
        primaryColor: AppColor.primary,
      ),
      home: const HomeScreen(),
    );
  }
}
