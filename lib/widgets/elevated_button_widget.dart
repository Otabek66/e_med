import 'package:e_med/core/constants/font/fontsize.dart';
import 'package:e_med/core/constants/radius/RadiusConst.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/screens/auth/cubit/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:flutter/material.dart';

class ElevatedButtonWidget {
  static elevatedButton(BuildContext context, String text, var stateName) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RadiusConst.small),
        ),
        fixedSize: Size(context.w * 0.896, context.h * 0.083958021),
        primary: ColorConst.kPrimaryColor,
      ),
      child: Text(text,style: const TextStyle(fontSize: FontSize.buttonTextSize),),
      onPressed: () {
        context.read<AuthCubit>().changeState(stateName);
      },
    );
  }
}
