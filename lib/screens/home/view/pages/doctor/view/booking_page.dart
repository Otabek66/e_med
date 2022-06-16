import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/screens/home/view/pages/doctor/widget/doctor_widget.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:e_med/widgets/back_button.dart';
import 'package:e_med/widgets/button_widget.dart';
import 'package:e_med/widgets/drop_dow_button.dart';
import 'package:flutter/material.dart';


class BookingPage extends StatelessWidget {
  final Map info;
  const BookingPage({required this.info,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ButtonWidgets(child: const Text('Confirm', style: FontStyles.headline3s), onPressed: (){}),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
                center: const Text('Book an appointment', style: FontStyles.headline3s,),
                leading: BackButtonWidgets(
              ontap: () => Navigator.pop(context),
            )),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Appointment to:', style: FontStyles.headline4s,),
                  SizedBox(height: context.h * 0.02),
                  DoctorsWidget(pic: info['user_image'], name: '${info['name']} at', expert: info['expert'], hospital: info['place_work'],),
                  SizedBox(height: context.h * 0.07,),
                  Text('Service type', style: FontStyles.headline4s,),
                  SizedBox(height: context.h * 0.1,child: DropDownWidget(items: [],text: 'Choose doctor\'s service type...',)),
                  SizedBox(height: context.h * 0.04,),
                  Text('Enter time', style: FontStyles.headline4s,),
                  SizedBox(height: context.h * 0.1,child: DropDownWidget(items: [],text: 'DD.MM.YYYY / HH:MM - HH:MM',))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
