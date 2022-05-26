import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/logo/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryColor,
      body: Center(child: Logo.logo()),
    );
  }
}