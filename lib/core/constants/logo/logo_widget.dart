import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:flutter/material.dart';

class Logo {
   static logo({Color? color}) {
    return Text(
      "e-med",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
        color: color ?? ColorConst.kPrimaryColor
      ),
    );
  }
}
