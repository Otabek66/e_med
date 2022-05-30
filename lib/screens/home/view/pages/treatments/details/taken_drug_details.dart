import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:e_med/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';

class TakenDrugDetailsView extends StatelessWidget {
  String drugName;
  String mg;
  String fromdo;
  TakenDrugDetailsView({Key? key, required this.drugName, required this.mg, required this.fromdo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
                center: Text(
                  "Taken drug details",
                  style: FontStyles.headline3s,
                ),
                leading: BackButtonWidgets(ontap: () {
                  Navigator.pop(context);
                },),),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: SizedBox(
                      width: context.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: context.h * 0.03),
                          Text("Drug name"),
                          Text(drugName,
                              style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.03),
                          Text("Dose"),
                          Text(mg, style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.03),
                          Text("Taking dates (start-end)"),
                          Text(fromdo,
                              style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.03),
                          Text("How many times"),
                          Text("2 times a day", style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.03),
                          Text("Associated with"),
                          Text("Multiple sclerosis",
                              style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.03),
                          Text("Comments"),
                          Text("Consume without water. It lessons the effect",
                              style: FontStyles.headline3s),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}