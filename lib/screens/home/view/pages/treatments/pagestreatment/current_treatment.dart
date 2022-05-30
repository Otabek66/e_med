import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/widgets/listtilewidgets/list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CurrentTreatment extends StatelessWidget {
  const CurrentTreatment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Current treatment
        child: SafeArea(
          child: Column(
              children: [
          Expanded(
              child: Column(
                children: [
                  
                  SizedBox(height: context.h * 0.01 ),
                  ListTileWidget(title: "Aortic Aneurysm", subtitle1: "Ma'murov Abbos", subtitle2: "Family Clinic No42",),
                  ListTileWidget(title: "Fibromyalgiya", subtitle1: "Nazirov Muxtor", subtitle2: "Family Clinic No42",),
                ],
              ))
              ],
            ),
        ));
  }
}
