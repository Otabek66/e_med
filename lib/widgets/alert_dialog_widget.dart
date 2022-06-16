import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/core/constants/icons/icon_const.dart';
import 'package:e_med/core/constants/radius/RadiusConst.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class AlertDialogWidget {
  static void alertDialogWidget({required String time,required String name,required BuildContext context,required VoidCallback ontap }) {
    showDialog(
        barrierColor: ColorConst.grey.withOpacity(0.5),
        context: context,
        builder: (context) => AlertDialog(
              title: IconConst.done,
              insetPadding: EdgeInsets.symmetric(vertical: context.h * 0.25),
              actionsAlignment: MainAxisAlignment.center,
              content: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'You have successfully booked\nan appointment',
                      style: FontStyles.headline4sbold,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'You can go to $name\n on ${time.substring(0,10)}',
                      style: FontStyles.headline4s,
                      textAlign: TextAlign.center,
                    ),
                    ButtonWidgets(
                        onPressed: ontap,
                        child: const Text('Go home'))
                  ]),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(RadiusConst.medium)),
              backgroundColor: ColorConst.white,
            ));
  }
}