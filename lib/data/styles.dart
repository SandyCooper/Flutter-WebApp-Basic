import 'package:flutter/material.dart';
import 'package:flutter_web_app_basic/data/colors.dart';

ButtonStyle buttonStyleForNavBar = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide(
        color: AppColor.primary,
      ),
    ),
  ),
);
