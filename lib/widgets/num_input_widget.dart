import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../core/constants/radius/RadiusConst.dart';

class NumberInputWidget extends StatelessWidget {
  const NumberInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.only(right: context.w * 0.02),
      width: context.w * 0.13,
      height: context.h * 0.07,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: ColorConst.blackfortext.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(RadiusConst.small)),
      child: TextFormField(
        autocorrect: true,
        onChanged: ((value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        }),
        style: FontStyles.headline2s,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        keyboardType: TextInputType.number,
        decoration:
            const InputDecoration(border: InputBorder.none, hintText: '0'),
      ),
    );
  }
}