import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:e_med/widgets/back_button.dart';
import 'package:e_med/widgets/listtilewidgets/more_list_tile_widget.dart';
import 'package:flutter/material.dart';

class TreatmentDetailsView extends StatelessWidget {
  String name;
  String clinic;
  TreatmentDetailsView({Key? key, required this.name, required this.clinic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
                center: Text(
                  "Treatment details",
                  style: FontStyles.headline3s,
                ),
                leading: BackButtonWidgets(ontap: () {
                  Navigator.pop(context);
                })),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    
                    const CircleAvatar(
                      radius: 50,
                      foregroundImage:
                          NetworkImage('https://source.unsplash.com/random'),
                    ),
                    SizedBox(height: context.h * 0.01),
                    Text(name, style: FontStyles.headline3s),
                    Text("Dermotologist"),
                    SizedBox(height: context.h * 0.03),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: SizedBox(
                        width: context.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Clinic"),
                            Text(clinic, style: FontStyles.headline3s),
                            SizedBox(height: context.h * 0.03),
                            Text("Clinic location"),
                            Text("Shaykhontakhur district, st.",
                                style: FontStyles.headline3s),
                            Text("Zulfiyakhonim, 18 Tashkent, 100128",
                                style: FontStyles.headline3s),
                            SizedBox(height: context.h * 0.03),
                            Text("Start date"),
                            Text("20.11.2021", style: FontStyles.headline3s),
                            SizedBox(height: context.h * 0.03),
                            Text("Complaints"),
                            Text("Redness on the skin",
                                style: FontStyles.headline3s),
                            SizedBox(height: context.h * 0.03),
                            Text("Diagnosis"),
                            Text("Skin psoriasis", style: FontStyles.headline3s),
                            SizedBox(height: context.h * 0.03),
                            Text("Treatment"),
                            Text("Diet, Ozone therapy / 6 days,",
                                style: FontStyles.headline3s),
                            Text("tivortin 100.0 / 6 days",
                                style: FontStyles.headline3s),
                            SizedBox(height: context.h * 0.03),
                            Text("Analysis"),
                            Text("blood, urine, ultrasound, hormones",
                                style: FontStyles.headline3blue),
                            SizedBox(height: context.h * 0.03),
                            Text("Drugs being taken"),
                            MoreListTileWidget(
                              title: "Salicylic",
                              mg: "150 mg",
                            ),
                            MoreListTileWidget(
                              title: "Calcipotriol",
                              mg: "500 mg",
                            ),
                            MoreListTileWidget(
                              title: "Tazorac",
                              mg: "100 mg",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
