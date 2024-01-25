import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/data/colors.dart';
import 'package:flutter_web_app_basic/data/constraints.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() {
    return _Container2State();
  }
}

class _Container2State extends State<Container2> {
  @override
  Widget build(context) {
    Widget desktopContainer2(BuildContext context) {
      return Container(
        height: 900,
        width: double.infinity,
        decoration: BoxDecoration(color: AppColor.primary),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: -20,
                    right: -20,
                    child: Container(
                      height: 320,
                      width: 320,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(vector1),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -20,
                    left: -20,
                    child: Container(
                      height: 320,
                      width: 320,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(vector2),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 50,
                    left: 50,
                    bottom: 0,
                    child: Container(
                      height: 712,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(dashboard),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [fb, google, cocacola, samsung]
                      .map(
                        (e) => Container(
                          height: 40,
                          width: 160,
                          margin: const EdgeInsets.symmetric(
                            vertical: 40,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(e),
                            ),
                          ),
                        ),
                      )
                      .toList()),
            ),
          ],
        ),
      );
    }

    Widget mobileContainer2(BuildContext context) {
      return Container(
        // padding: const EdgeInsets.only(top: 40),
        width: double.infinity,
        decoration: BoxDecoration(color: AppColor.primary),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: 0,
              ),
              child: Container(
                height: 195,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(dashboard),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [fb, google, cocacola, samsung]
                      .map(
                        (e) => Container(
                          height: 20,
                          width: 100,
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(e),
                            ),
                          ),
                        ),
                      )
                      .toList()),
            ),
          ],
        ),
      );
    }

    return ScreenTypeLayout.builder(
      mobile: mobileContainer2,
      desktop: desktopContainer2,
    );
  }
}
