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

    Widget mobileContainer3(BuildContext context) {
      return commanContainerMobile(
        "Alwalys online",
        "Real-time \nsupport \nwith cloud",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
        illustration1,
      );
    }

    return ScreenTypeLayout.builder(
      mobile: mobileContainer3,
      desktop: desktopContainer3,
    );
  }
}
