import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/data/colors.dart';
import 'package:flutter_web_app_basic/data/constraints.dart';
import 'package:flutter_web_app_basic/widgets/comman_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() {
    return _Container5State();
  }
}

class _Container5State extends State<Container5> {
  @override
  Widget build(context) {
    Widget desktopContainer5(BuildContext context) {
      return commamContainer(
          "Use anytime",
          "Use anytime \nwhen you \nneed",
          "Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. Enim \nipsum, amet quis ullamcorper eget ut.",
          illustration3,
          false);
    }

    // Widget mobileContainer5(BuildContext context) {
    //   return Container(
    //     // padding: const EdgeInsets.only(top: 40),
    //     width: double.infinity,
    //     decoration: BoxDecoration(color: AppColor.primary),
    //     child: Column(
    //       children: [
    //         Container(
    //           padding: const EdgeInsets.only(
    //             left: 20,
    //             right: 20,
    //             top: 20,
    //             bottom: 0,
    //           ),
    //           child: Container(
    //             height: 195,
    //             width: double.infinity,
    //             decoration: const BoxDecoration(
    //               image: DecorationImage(
    //                 image: AssetImage(dashboard),
    //                 fit: BoxFit.contain,
    //               ),
    //             ),
    //           ),
    //         ),
    //         Container(
    //           color: Colors.white,
    //           child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [fb, google, cocacola, samsung]
    //                   .map(
    //                     (e) => Container(
    //                       height: 20,
    //                       width: 100,
    //                       margin: const EdgeInsets.symmetric(
    //                         vertical: 10,
    //                       ),
    //                       decoration: BoxDecoration(
    //                         image: DecorationImage(
    //                           image: AssetImage(e),
    //                         ),
    //                       ),
    //                     ),
    //                   )
    //                   .toList()),
    //         ),
    //       ],
    //     ),
    //   );
    // }

    return ScreenTypeLayout.builder(
      // mobile: mobileContainer5,
      desktop: desktopContainer5,
    );
  }
}
