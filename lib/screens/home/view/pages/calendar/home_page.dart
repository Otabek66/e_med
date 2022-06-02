import 'package:e_med/core/constants/PM/pMconst.dart';
import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/core/constants/icons/icon_const.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(
                  trailing: IconConst.bell,
                  leading: Icon(IconConst.person),
                  center: SizedBox(
                      height: context.h * 0.025,
                      width: context.w * 0.3,
                      child: IconConst.bluelogo),
                ),
                Padding(
                  padding: PMconst.small,
                  child: SizedBox(
                    height: context.h * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Today’s medications',
                          style: FontStyles.headline5s,
                        ),
                        SizedBox(
                          height: context.h * 0.1,
                        ),
                        Center(
                          child: Column(
                            children: [
                              const Text(
                                'No medications',
                                style: FontStyles.headline2s,
                              ),
                              SizedBox(height: context.h * 0.040),
                              const Text(
                                'They will appear here only when doctor\nadds them to your account.',
                                style: FontStyles.headline4s,
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: PMconst.medium,
                  child: SizedBox(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Monthly appointments',
                            style: FontStyles.headline5s,
                          ),
                          CalenDarWidgets(
                            onTap: (day) {
                              NavigationService.instance.pushNamed('/booking');
                            },
                          ),
                          SizedBox(height: context.h * 0.010),
                          const Text(
                            'Today\'s appointments',
                            style: FontStyles.headline5s,
                          ),
                          Container(height: context.h * 0.4,color: ColorConst.kPrimaryColor,),
                          SizedBox(height: context.h * 0.040),
                          Center(child: ButtonWidgets(child: const Text('Add new appointment', style: FontStyles.headline3s), onPressed: (){}),)
                        ]),
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
