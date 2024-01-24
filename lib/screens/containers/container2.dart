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

    // Widget mobileContainer2(BuildContext context) {
    //   return Container(
    //     margin: EdgeInsets.symmetric(horizontal: w! / 10),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       // crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Container(
    //           height: w! / 1.2,
    //           width: w! / 1.2,
    //           decoration: const BoxDecoration(
    //             image: DecorationImage(
    //               image: AssetImage(illustration1),
    //               fit: BoxFit.contain,
    //             ),
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 20,
    //         ),
    //         Text(
    //           "Track your Expenses \nto Save Money",
    //           style: TextStyle(
    //             fontSize: w! / 12,
    //             fontWeight: FontWeight.bold,
    //             height: 1,
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         const Text(
    //           "Helps you to organize your income and expenses",
    //           textAlign: TextAlign.center,
    //           style: TextStyle(
    //             fontSize: 16,
    //             color: Colors.grey,
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 20,
    //         ),
    //         Column(
    //           children: [
    //             Container(
    //               height: 45,
    //               child: ElevatedButton.icon(
    //                 onPressed: () {},
    //                 style: ButtonStyle(
    //                   elevation: MaterialStateProperty.all(0),
    //                   backgroundColor:
    //                       MaterialStateProperty.all(AppColor.primary),
    //                   shape: MaterialStateProperty.all(
    //                     RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(10),
    //                     ),
    //                   ),
    //                 ),
    //                 icon: const Icon(
    //                   Icons.arrow_drop_down,
    //                   color: Colors.white,
    //                 ),
    //                 label: const Text(
    //                   "Try Free Demo",
    //                   style: TextStyle(color: Colors.white),
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(
    //               height: 20,
    //             ),
    //             const Text(
    //               "— Web, iOs and Android",
    //               style: TextStyle(
    //                 fontSize: 16,
    //                 color: Colors.grey,
    //               ),
    //             ),
    //             const SizedBox(
    //               height: 20,
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   );
    // }

    return ScreenTypeLayout.builder(
      // mobile: mobileContainer2,
      desktop: desktopContainer2,
    );
  }
}
