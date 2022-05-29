import 'package:e_med/core/constants/PM/pMconst.dart';
import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/screens/home/view/pages/calendar/meeting.dart';
import 'package:e_med/screens/home/view/pages/calendar/meetingDateSource.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:e_med/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../../../core/constants/icons/icon_const.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: context.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(
                  trailing: IconConst.bell,
                  leading: InkWell(
                    child: CircleAvatar(
                      foregroundImage: AssetImage("assets/icons/person.png"),
                    ),
                    onTap: (){},
                  ),
                  center: SizedBox(
                      height: context.h * 0.050,
                      width: context.w * 0.3,
                      child: IconConst.bluelogo),
                ),
                Expanded(
                    flex: 8,
                    child: Padding(
                      padding: PMconst.small,
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
                    )),
                Expanded(
                    flex: 8,
                    child: Padding(
                      padding: PMconst.medium,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Monthly appointments',
                              style: FontStyles.headline5s,
                            ),
                            SfCalendar(
                              dataSource: MeetingDataSource(getDate()),
                              firstDayOfWeek: 6,
                              onTap: (day) {
                                debugPrint(day.date!.day.toString());
                              },
                              initialDisplayDate: DateTime(2022, 5, 23),
                              todayHighlightColor: ColorConst.red,
                              initialSelectedDate: DateTime(2022, 05, 3),
                              showCurrentTimeIndicator: true,
                              onViewChanged: ((viewChangedDetails) {
                                debugPrint(viewChangedDetails.toString());
                              }),
                              monthViewSettings: const MonthViewSettings(
                                  appointmentDisplayMode:
                                      MonthAppointmentDisplayMode.appointment),
                              view: CalendarView.month,
                            ),
                          ]),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
