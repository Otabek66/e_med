import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final Widget center;
  final Widget leading;
  final Widget trailing;
  final Widget bottom;
  const AppBarWidget({
    this.trailing = const SizedBox(),
    this.bottom = const SizedBox(),
    required this.leading,
    this.center = const Text('Sign up', style: FontStyles.headline3s,),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: bottom == SizedBox ? context.h * 0.07 : context.h * 0.193,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            leading,
            const SizedBox(width: 30,),
            center,
            // const Spacer(),
            SizedBox(
              width: context.w * 0.1,
            ),
            trailing
          ],
        ),
        bottom,
        const Divider(
          color: ColorConst.black,
        )
      ]),
    );
  }
}
