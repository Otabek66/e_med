import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/core/constants/icons/icon_const.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:e_med/widgets/back_button.dart';
import 'package:e_med/widgets/button_widget.dart';
import 'package:flutter/material.dart';


class DoctorInfo extends StatelessWidget {
  final Map info;
  const DoctorInfo({required this.info, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ButtonWidgets(
          height: context.h * 0.07,
          child: const Text(
            'Book an appointment',
            style: FontStyles.headline3s,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/bookingpage', arguments: info);
          }
          ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                AppBarWidget(
                  leading: BackButtonWidgets(
                      ontap: () {
                        Navigator.pop(context);
                        // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: ((context) => DoctorPage(datainfo: HomeCubit.dataList))), (route) => false);

                      },
                  ),
                  center: Text(
                    info['name'],
                    style: FontStyles.headline3s,
                  ),
                  trailing: SizedBox(width: 70.0,),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(150.0),
                        child: FadeInImage(
                          
                            fit: BoxFit.cover,
                            width: context.w * 0.4,
                            height: context.h * 0.2,
                            placeholder:
                                const AssetImage('assets/gifs/loading.gif'),
                            image: AssetImage(info['user_image'])),
                      ),
                      SizedBox(height: context.h * 0.02),
                      Text(
                        info['name'],
                        style: FontStyles.headline2s,
                      ),
                      SizedBox(height: context.h * 0.01),
                      Text(
                        info['expert'],
                        style: FontStyles.headline4s,
                      ),
                      SizedBox(height: context.h * 0.1),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Place of work',
                              style: FontStyles.headline4s,
                            ),
                            SizedBox(height: context.h * 0.02),
                            Text(
                              info['place_work'],
                              style: FontStyles.headline3s,
                            ),
                            SizedBox(height: context.h * 0.06),
                            const Text(
                              'Work Locations',
                              style: FontStyles.headline4s,
                            ),
                            SizedBox(height: context.h * 0.02),
                            Text(
                              info['location'],
                              style: FontStyles.headline3s,
                            ),
                            SizedBox(height: context.h * 0.06),
                            const Text(
                              'Available time',
                              style: FontStyles.headline4s,
                            ),
                            SizedBox(height: context.h * 0.01),
                            Text(
                              info['days'],
                              style: FontStyles.headline2s,
                            ),
                            SizedBox(height: context.h * 0.01),
                            Text(
                              '${info['time'][0].toString()} : 00 - ${info['time'][1].toString()} : 00',
                              style: FontStyles.headline3s,
                            ),
                            SizedBox(height: context.h * 0.06),
                            const Text(
                              'Rating',
                              style: FontStyles.headline4s,
                            ),
                            SizedBox(
                              height: context.h * 0.1,
                                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: info['rating'],itemBuilder: (_, __) {
                                return IconConst.star;
                              }),
                            ),
                            SizedBox(height: context.h * 0.1,)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
