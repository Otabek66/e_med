import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/services/getstorage.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarWidget extends StatelessWidget {
  final void Function(CalendarTapDetails)? onTap;
  const CalendarWidget({required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      dataSource: MeetingService(
        meetingData(
          context: context,
          location: "Storageservice.instance.storage.read('location')",
          day: Storageservice.instance.storage.read('day') as int,
          month: Storageservice.instance.storage.read('month'),
          houre: Storageservice.instance.storage.read('houre'),
        ),
      ),
      firstDayOfWeek: 6,
      onTap: onTap,
      todayHighlightColor: ColorConst.red,
      showCurrentTimeIndicator: true,
      onViewChanged: ((viewChangedDetails) {
        debugPrint(viewChangedDetails.toString());
      }),
      monthViewSettings: const MonthViewSettings(
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
      view: CalendarView.month,
    );
  }
}
