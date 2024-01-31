import 'package:flutter/material.dart';
// import 'package:flutter_web_app_basic/data/colors.dart';
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

    Widget mobileContainer5(BuildContext context) {
      return commanContainerMobile(
          "Use anytime",
          "Use anytime \nwhen you \nneed",
          "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
          illustration3,
      );
    }

    return ScreenTypeLayout.builder(
      mobile: mobileContainer5,
      desktop: desktopContainer5,
    );
  }
}
