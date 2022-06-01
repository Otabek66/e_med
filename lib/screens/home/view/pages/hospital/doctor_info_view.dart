import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/icons/icon_const.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/models/doctors_model.dart';
import 'package:e_med/models/hospital_model.dart';
import 'package:e_med/screens/home/state/home_state.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:e_med/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';
import '../../../cubit/home_cubit.dart';

class DoctorView extends StatelessWidget {
  DoctorsModel info;
  DoctorView({Key? key, required this.info}) : super(key: key);

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
                leading: InkWell(
                  child: Row(children: [Icon(Icons.chevron_left)]),
                  onTap: () {
                    context.read<HomeCubit>().changeState(HospitalState());
                  },
                ),
                center: TextWidget.textwidget(info.name),
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(info.image),
              ),
              TextWidget.textwidget(info.name),
              TextWidget.textwidget(info.spes,
                  color: ColorConst.blackfortext,
                  fontWeight: FontWeight.normal,
                  size: 16),
              Container(
                width: context.w * 0.893,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: const Text("Place of work"),
                      subtitle: Text(info.info[0].workPlace),
                      trailing: Image.asset("assets/icons/phone.png"),
                    ),
                    listTile("Work location",
                        subtitle: Text(info.info[0].workLocation)),
                    listTile(
                      "Avialable time",
                      subtitle: Text(
                        "${info.info[0].workingDay}\n${info.info[0].workingHour}",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: context.w * 0.043),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        TextWidget.textwidget('Rating',fontWeight: FontWeight.normal,size: 16,color: ColorConst.blackfortext),
                        SizedBox(
                          width: context.w * 0.5,
                          height: context.w * 0.13,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, ind) {
                              return SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset(
                                      'assets/icons/staryellow.svg'));
                            },
                            itemCount: info.info[0].rating,
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  ListTile listTile(String title, {Widget? subtitle}) {
    return ListTile(
      title: Text(title),
      subtitle: subtitle,
    );
  }
}
