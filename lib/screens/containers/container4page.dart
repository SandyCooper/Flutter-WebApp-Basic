import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/data/constraints.dart';
// import 'package:flutter_web_app_basic/screens/containers/container.5.dart';
// import 'package:flutter_web_app_basic/screens/containers/container1.dart';
// import 'package:flutter_web_app_basic/screens/containers/container2.dart';
// import 'package:flutter_web_app_basic/screens/containers/container3.dart';
import 'package:flutter_web_app_basic/screens/containers/container4.dart';
// import 'package:flutter_web_app_basic/widgets/nav_bar.dart';

class Container4Page extends StatefulWidget {
  const Container4Page({super.key});

  @override
  State<Container4Page> createState() {
    return _Container4PageState();
  }
}

class _Container4PageState extends State<Container4Page> {
  @override
  Widget build(context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: const Column(
            children: [
              // NavBar(),
              // Container1(),
              // Container2(),
              // Container3(),
              Container4(),
              // Container5(),
            ],
          ),
        ),
      ),
    );
  }
}
