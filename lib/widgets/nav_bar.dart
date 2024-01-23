import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/data/colors.dart';
import 'package:flutter_web_app_basic/data/constraints.dart';
import 'package:flutter_web_app_basic/data/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() {
    return _NavBarState();
  }
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(context) {
    Widget navLogo() {
      return Container(
        width: 110,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(logo),
          ),
        ),
      );
    }

    Widget navButton(String text) {
      return Container(
        child: TextButton(
            onPressed: () {},
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
              ),
            )),
      );
    }

    Widget mobileNavBar(BuildContext context) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu),
            navLogo(),
          ],
        ),
      );
    }

    Widget desktopNavBar(BuildContext context) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navLogo(),
            Row(
              children: [
                navButton("Features"),
                navButton("About us"),
                navButton("Pricing"),
                navButton("Feedback"),
              ],
            ),
            Container(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: buttonStyleForNavBar,
                child: const Text(
                  "Request a Demo",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return ScreenTypeLayout.builder(
      mobile: mobileNavBar,
      desktop: desktopNavBar,
    );
  }
}
