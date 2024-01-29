import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/data/colors.dart';
import 'package:flutter_web_app_basic/data/constraints.dart';

Widget commamContainer(String s1, s2, s3, image, bool imageLeft) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Row(
      children: [
        if (imageLeft)
          Expanded(
            child: Container(
              height: 530,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.contain)),
            ),
          ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment:
                  imageLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Text(
                  s1.toUpperCase(),
                  textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  s2,
                  textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  s3,
                  textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColor.primary,
                  ),
                  label: Text(
                    "Learn More",
                    style: TextStyle(
                      color: AppColor.primary,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (!imageLeft)
          Expanded(
            child: Container(
              height: 530,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.contain),
              ),
            ),
          ),
      ],
    ),
  );
}
