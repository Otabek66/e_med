import 'package:e_med/core/components/box_decoration.dart';
import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ShowModalWidget {
  static Future<dynamic> showModal(BuildContext context, String title, String mg) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxAllDecoration.decor(ColorConst.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(""),
                      ),
                      Spacer(),
                      Text(title, style: FontStyles.headline3s),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Ok", style: FontStyles.headline3blue),
                      )
                    ],
                  ),
                ),
            
                Divider(thickness: 1),
                SizedBox(height: context.h * 0.01),
                Text("Drug name"),
                SizedBox(height: context.h * 0.005),
                Text(title, style: FontStyles.headline3s),
                SizedBox(height: context.h * 0.01),
                Text("Dose"),
                SizedBox(height: context.h * 0.005),
                Text(mg, style: FontStyles.headline3s),
                SizedBox(height: context.h * 0.01),
                Text("Taking dates (start-end)"),
                SizedBox(height: context.h * 0.005),
                Text("20.05.2022 - 30.05.2022", style: FontStyles.headline3s),
                SizedBox(height: context.h * 0.01),
                Text("How many times"),
                SizedBox(height: context.h * 0.005),
                Text("2 times a day", style: FontStyles.headline3s),
                SizedBox(height: context.h * 0.01),
                Text("Associated with"),
                SizedBox(height: context.h * 0.005),
                Text("Multiple scleroris", style: FontStyles.headline3s),
                SizedBox(height: context.h * 0.01),
                Text("Comments"),
                SizedBox(height: context.h * 0.005),
                Text("Consume without water. It lessens the affect",
                    style: FontStyles.headline3s),
              ],
            ),
          ),
        );
      },
    );
  }
}
