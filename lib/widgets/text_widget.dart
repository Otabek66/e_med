import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/font/FWconst.dart';
import 'package:flutter/material.dart';

class TextWidget {
  static textwidget(
    String text, {
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? ColorConst.blackfortext,
        fontWeight: FWconst.
      ),
    );
  }
}
