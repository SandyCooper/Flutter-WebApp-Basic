import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/data/constraints.dart';
import 'package:flutter_web_app_basic/screens/containers/container.5.dart';
import 'package:flutter_web_app_basic/screens/containers/container1.dart';
import 'package:flutter_web_app_basic/screens/containers/container2.dart';
import 'package:flutter_web_app_basic/screens/containers/container3.dart';
import 'package:flutter_web_app_basic/screens/containers/container4.dart';
import 'package:flutter_web_app_basic/widgets/nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Web Demo"),),
      body: SingleChildScrollView(
        child: Container(
          child: const Column(
            children: [
              NavBar(),
              Container1(),
              Container2(),
              Container3(),
              Container4(),
              Container5(),
            ],
          ),
        ),
      ),
    );
  }
}
