import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:flutter/material.dart';

class Logo {
   static logo() {
    return const Text(
      "e-med",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
        color: ColorConst.kPrimaryColor
      ),
    );
  }
}
