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

class HospitalInfoView extends StatelessWidget {
  HospitalModel info;
  HospitalInfoView({Key? key,required this.info}) : super(key: key);


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        height: context.h,
        child: Column(
          children: [
            AppBarWidget(
              trailing: IconConst.filter,
              leading: InkWell(
                child:Row(children: [
                  Icon(Icons.chevron_left)
                ]),
                onTap: () {
                  context.read<HomeCubit>().changeState(HospitalState());
                },
              ),
              center: TextWidget.textwidget("Hospital")
              ),
              CircleAvatar(backgroundImage: AssetImage(info.image),)
          ],
        ),
      ),
    ));
  }
}
