
import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/core/constants/font/fontsize.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  String text;
  VoidCallback? onPressed;
  AppBarWidget({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      height: context.h * 0.06,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Row(
              children:  [
                Icon(Icons.chevron_left_outlined, size: FontSize.extraLarge, color: ColorConst.kPrimaryColor,),
                // IconConst.backarrow,
                Text("Back", style: TextStyle(fontStyle: FontStyle.normal), ),
              ],
            ),
            onTap: onPressed
          ),

          Spacer(),
          Text(text, style: FontStyles.headline2s),
          Spacer(),
          SizedBox(width: context.w * 0.2,)
        ],
      ),
    );
  }
}