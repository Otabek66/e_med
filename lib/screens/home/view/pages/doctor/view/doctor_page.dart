import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/core/constants/icons/icon_const.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/screens/home/state/home_state.dart';
import 'package:e_med/screens/home/view/pages/doctor/cubit/doctor_cubit.dart';
import 'package:e_med/screens/home/view/pages/doctor/widget/new_doctors_widget.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorPage extends StatelessWidget {
  final List datainfo;
  const DoctorPage({required this.datainfo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorCubit(),
      child: scafold(context),
    );
  }

  Scaffold scafold(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DoctorCubit, DoctorState>(builder: (context, state) {
        return SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              child: Column(
                children: [
                  AppBarWidget(
                    center: SizedBox(
                        height: context.h * 0.025,
                        width: context.w * 0.3,
                        child: IconConst.logo),
                    leading: Icon(IconConst.person),
                    trailing: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/filter');
                        },
                        child: IconConst.filter),
                  ),
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CupertinoSearchTextField(onChanged: (text) {
                          context.read<DoctorCubit>().searchDoctor(text);
                        }),
                        SizedBox(
                          height: context.h * 0.020,
                          child: const Divider(
                            color: ColorConst.black,
                          ),
                        ),
                        context.watch<DoctorCubit>().temp.isEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Recommended doctors for you',
                                    style: FontStyles.headline5s,
                                  ),
                                  SizedBox(height: context.h * 0.020),
                                  SizedBox(
                                    height: context.h * 0.5,
                                    child: ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: datainfo[0].length - 1,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () => Navigator.pushNamed(
                                                context, '/doctorinfo',
                                                arguments: datainfo[0][index]),
                                            child: SizedBox(
                                              height: context.h * 0.130,
                                              child: NewDoctorsWidget(
                                                  pic: datainfo[0][index]
                                                          ['user_image']
                                                      .toString(),
                                                  name: datainfo[0][index]
                                                          ['name']
                                                      .toString()),
                                            ),
                                          );
                                        }),
                                  ),
                                  SizedBox(
                                    height: context.h * 0.020,
                                  ),
                                  const Text(
                                    'List of doctors',
                                    style: FontStyles.headline5s,
                                  ),
                                  SizedBox(
                                    height: context.h * 0.04,
                                  ),
                                  SizedBox(
                                    height: context.h * 0.60,
                                    child: ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: datainfo[0].length,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/doctorinfo',
                                                  arguments: datainfo[0]
                                                      [index]);
                                            },
                                            child: NewDoctorsWidget(
                                                pic: datainfo[0][index]
                                                        ['user_image']
                                                    .toString(),
                                                name: datainfo[0][index]['name']
                                                    .toString()),
                                          );
                                        }),
                                  ),
                                ],
                              )
                            : SizedBox(
                                height: context.h * 0.9,
                                child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: context
                                        .watch<DoctorCubit>()
                                        .temp
                                        .length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/doctorinfo',
                                              arguments: context
                                                  .watch<DoctorCubit>()
                                                  .temp
                                                  .toList()[index]);
                                        },
                                        child: NewDoctorsWidget(
                                            pic: context
                                                .watch<DoctorCubit>()
                                                .temp
                                                .toList()[index]['user_image']
                                                .toString(),
                                            name: context
                                                .watch<DoctorCubit>()
                                                .temp
                                                .toList()[index]['name']
                                                .toString()),
                                      );
                                    }),
                              ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
