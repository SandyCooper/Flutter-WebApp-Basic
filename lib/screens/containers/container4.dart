import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/data/colors.dart';
import 'package:flutter_web_app_basic/data/constraints.dart';
import 'package:flutter_web_app_basic/widgets/comman_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() {
    return _Container4State();
  }
}

class _Container4State extends State<Container4> {
  @override
  Widget build(context) {
    Widget desktopContainer4(BuildContext context) {
      return commamContainer(
          "free some cost",
          "Save cost \nfor you and \nfamily",
          "Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. Enim \nipsum, amet quis ullamcorper eget ut.",
          illustration2,
          true);
    }

    Widget mobileContainer4(BuildContext context) {
      return commanContainerMobile(
        "free some cost",
        "Save cost \nfor you and \nfamily",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
        illustration2,
      );
    }

    return ScreenTypeLayout.builder(
      mobile: mobileContainer4,
      desktop: desktopContainer4,
    );
  }
}
