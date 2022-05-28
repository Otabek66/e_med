import 'dart:math';

import 'package:e_med/core/constants/font/fontsize.dart';
import 'package:e_med/core/constants/radius/RadiusConst.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/screens/auth/view/auth_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/logo/logo_widget.dart';
import 'package:e_med/core/constants/padding/padding_const.dart';
import 'package:e_med/screens/auth/cubit/auth_cubit.dart';
import 'package:e_med/screens/auth/state/auth_state.dart';
import 'package:e_med/screens/auth/view/pages/sign_up_view.dart';
import 'package:e_med/widgets/elevated_button_widget.dart';
import 'package:e_med/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          flex: 313,
          child: Center(
            child: SvgPicture.asset('assets/images/logo/logo_two.svg'),
          ),
        ),
        Expanded(
            flex: 687,
            child: Column(
              children: [
                Padding(
                  padding: PaddingConst.kPrimaryPadding,
                  child: TextWidget.textwidget(
                      'Your medical data is always with you',
                      color: ColorConst.black,
                      size: 40),
                ),
                SizedBox(
                  height: context.h * 0.024,
                ),
                Padding(
                  padding: PaddingConst.kPrimaryPadding,
                  child: TextWidget.textwidget(
                      'Nunc orci sed sed posuere volutpat varius egestas sit. Amet, suscipit eget dis fusce quam in aliquet pulvinar.',
                      color: ColorConst.blackfortext,
                      size: FontSize.medium,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: context.h * 0.168,
                ),
                Center(
                  child: ElevatedButtonWidget.elevatedButton(
                    context,
                    "get Started",
                    (){
                      context.read<AuthCubit>().changeState(AuthSignUP());
                    },
                  ),
                ),
                SizedBox(
                  height: context.h * 0.024,
                ),
                Center(
                  child: ElevatedButton(
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: FontSize.buttonTextSize,
                          color: ColorConst.kPrimaryColor),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(RadiusConst.small),
                        ),
                        fixedSize:
                            Size(context.w * 0.896, context.h * 0.083958021),
                        primary: ColorConst.white,
                        side: BorderSide(color: ColorConst.kPrimaryColor)),
                    onPressed: () {
                      context.read<AuthCubit>().changeState(AuthSignIN());
                    },
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
