import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/data/colors.dart';
import 'package:flutter_web_app_basic/data/constraints.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() {
    return _Container1State();
  }
}

class _Container1State extends State<Container1> {
  @override
  Widget build(context) {
    Widget desktopContainer1(BuildContext context) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: w! / 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Track your \nExpenses to \nSave Money",
                  style: TextStyle(
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Helps you to organize your income and expenses",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                              MaterialStateProperty.all(AppColor.primary),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        label: const Text(
                          "Try Free Demo",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "— Web, iOs and Android",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 530,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(illustration1),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ]),
      );
    }

    Widget mobileContainer1(BuildContext context) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: w! / 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: w! / 1.2,
              width: w! / 1.2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(illustration1),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Track your Expenses \nto Save Money",
              style: TextStyle(
                fontSize: w! / 12,
                fontWeight: FontWeight.bold,
                height: 1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Helps you to organize your income and expenses",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  height: 45,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(AppColor.primary),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Try Free Demo",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "— Web, iOs and Android",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return ScreenTypeLayout.builder(
      mobile: mobileContainer1,
      desktop: desktopContainer1,
    );
  }
}
