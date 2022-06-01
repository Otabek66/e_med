import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/core/constants/icons/icon_const.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/models/doctors_model.dart';
import 'package:e_med/models/hospital_model.dart';
import 'package:e_med/screens/home/state/home_state.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:e_med/widgets/elevated_button_widget.dart';
import 'package:e_med/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';
import '../../../cubit/home_cubit.dart';

class DoctorInfoView extends StatelessWidget {
  DoctorsModel info;
  DoctorInfoView({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: context.h,
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
                SizedBox(
                  height: context.w * 0.06,
                ),
                TextWidget.textwidget(info.name),
                SizedBox(
                  height: context.w * 0.02,
                ),
                TextWidget.textwidget(info.spes,
                    color: ColorConst.blackfortext,
                    fontWeight: FontWeight.normal,
                    size: 16),
                SizedBox(
                  height: context.w * 0.04,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: context.w * 0.04),
                  width: context.w * 0.893,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Place of work',
                        style: FontStyles.headline4s,
                      ),
                      SizedBox(height: context.h * 0.02),
                      Text(
                        info.info[0].workPlace,
                        style: FontStyles.headline3s,
                      ),
                      SizedBox(height: context.h * 0.06),
                      const Text(
                        'Work Locations',
                        style: FontStyles.headline4s,
                      ),
                      SizedBox(height: context.h * 0.02),
                      Text(
                        info.info[0].workLocation,
                        style: FontStyles.headline3s,
                      ),
                      SizedBox(height: context.h * 0.06),
                      const Text(
                        'Available time',
                        style: FontStyles.headline4s,
                      ),
                      SizedBox(height: context.h * 0.01),
                      Text(
                        info.info[0].workingDay,
                        style: FontStyles.headline2s,
                      ),
                      SizedBox(height: context.h * 0.01),
                      Text(
                        info.info[0].workingHour,
                        style: FontStyles.headline3s,
                      ),
                      SizedBox(height: context.h * 0.06),
                      const Text(
                        'Rating',
                        style: FontStyles.headline4s,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: context.w * 0.043),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            Row(
                              children: [
                                Container(
                                  // color: Colors.red,
                                  width:
                                      context.w * info.info[0].rating * 0.08425,
                                  height: context.w * 0.13,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (ctx, ind) {
                                      return Container(
                                        margin: EdgeInsets.only(
                                            right: context.w * 0.037),
                                        height: 20,
                                        width: 20,
                                        child: SvgPicture.asset(
                                            'assets/icons/staryellow.svg'),
                                      );
                                    },
                                    itemCount: info.info[0].rating,
                                  ),
                                ),
                                Container(
                                  // color: Colors.yellow,
                                  width: context.w *
                                      (5 - info.info[0].rating) *
                                      0.08425,
                                  height: context.w * 0.13,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (ctx, ind) {
                                      return Container(
                                          margin: EdgeInsets.only(
                                              right: context.w * 0.037),
                                          height: 20,
                                          width: 20,
                                          child: SvgPicture.asset(
                                              'assets/icons/stargrey.svg'));
                                    },
                                    itemCount: 5 - info.info[0].rating,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: ElevatedButtonWidget.elevatedButton(
          context, "Book an appointment", () {}),
    );
  }

  ListTile listTile(String title, {Widget? subtitle}) {
    return ListTile(
      title: Text(title),
      subtitle: subtitle,
    );
  }
}
