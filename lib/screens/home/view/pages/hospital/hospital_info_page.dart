import 'dart:ui';

import 'package:e_med/core/constants/icons/icon_const.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/models/hospital_model.dart';
import 'package:e_med/screens/home/cubit/home_cubit.dart';
import 'package:e_med/screens/home/state/home_state.dart';
import 'package:e_med/screens/home/view/pages/hospital/hospital_view.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:e_med/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class HospitalInfoView extends StatelessWidget {
  HospitalModel info;
  HospitalInfoView({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        height: context.h,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBarWidget(
                trailing: IconConst.filter,
                leading: InkWell(
                  child: Row(children: [Icon(Icons.chevron_left)]),
                  onTap: () {
                    context.read<HomeCubit>().changeState(HospitalState());
                  },
                ),
                center: TextWidget.textwidget("Hospital"),
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(info.image),
              ),
              TextWidget.textwidget(info.name),
              Container(
                width: context.w * 0.893,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: const Text("Phone number"),
                      subtitle: Text(info.phoneNumber),
                      trailing: Image.asset("assets/icons/phone.png"),
                    ),
                    listTile("Working time",
                        Text("${info.workingDay} \n${info.workingHour}")),
                    listTile(
                      "Location Link",
                      Text(
                        info.locationLink,
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ),
                    listTile(
                      "Website",
                      Text(
                        info.locationLink,
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ),
                    TextWidget.textwidget("Doctors at Hospital"),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        itemBuilder: (ctx, ind) {
                          return ListTile(
                            trailing: InkWell(
                              child: Icon(Icons.chevron_right),
                              onTap: () {},
                            ),
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage(info.dInfo[ind].image),
                            ),
                            title: Text(info.dInfo[ind].name),
                            subtitle: Text(info.dInfo[ind].spes),
                          );
                        },
                        itemCount: info.dInfo.length,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  ListTile listTile(String title, Text subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: subtitle,
    );
  }
}
