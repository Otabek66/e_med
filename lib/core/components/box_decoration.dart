import 'package:flutter/material.dart';

class BoxAllDecoration {
  static decor(Color color) => BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 176, 187, 192).withOpacity(0.4),
            spreadRadius: 5,
            blurRadius: 20,
            offset: Offset(3, 5),
          ),
        ],
      );
}