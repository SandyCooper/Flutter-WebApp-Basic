import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/data/constraints.dart';
// import 'package:flutter_web_app_basic/screens/containers/container.5.dart';
// import 'package:flutter_web_app_basic/screens/containers/container1.dart';
// import 'package:flutter_web_app_basic/screens/containers/container2.dart';
import 'package:flutter_web_app_basic/screens/containers/container3.dart';
// import 'package:flutter_web_app_basic/screens/containers/container4.dart';
// import 'package:flutter_web_app_basic/widgets/nav_bar.dart';

class Container3Page extends StatefulWidget {
  const Container3Page({
    super.key,
    required this.someText,
  });

  final Map<String, String> someText;

  @override
  State<Container3Page> createState() {
    return _Container3PageState();
  }
}

class _Container3PageState extends State<Container3Page> {
  @override
  Widget build(context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // NavBar(),
              // Container1(),
              // Container2(),
              Container3(
                someText: widget.someText["someText"]!,
                anotherText: widget.someText["anotherText"]!,
              ),
              // Container4(),
              // Container5(),
            ],
          ),
        ),
      ),
    );
  }
}
