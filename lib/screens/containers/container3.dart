import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/data/colors.dart';
import 'package:flutter_web_app_basic/data/constraints.dart';
import 'package:flutter_web_app_basic/widgets/comman_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() {
    return _Container3State();
  }
}

class _Container3State extends State<Container3> {
  @override
  Widget build(context) {
    Widget desktopContainer3(BuildContext context) {
      return commamContainer(
          "Alwalys online",
          "Real-time \nsupport \nwith cloud",
          "Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. Enim \nipsum, amet quis ullamcorper eget ut.",
          illustration1,
          false);
    }

    // Widget mobileContainer3(BuildContext context) {
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
      // mobile: mobileContainer3,
      desktop: desktopContainer3,
    );
  }
}
