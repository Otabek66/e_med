import 'package:bloc/bloc.dart';
import 'package:e_med/screens/home/cubit/home_cubit.dart';
import 'package:e_med/screens/home/state/home_state.dart';
import 'package:e_med/services/Boxservice.dart';
import 'package:flutter/material.dart';

class AppointmentCubit extends Cubit<BookingState> {
  AppointmentCubit() : super(BookingState()) {
    infoReturner();
  }

  List regions = [];
  List district = [];
  List hospital = [];
  List doctorposition = [];
  List doctorname = [];
  List times = [];

  List infoReturner() {
    for (var i = 0; i < HomeCubit.dataList[0].length; i++) {
      debugPrint('Booking >>>> ${HomeCubit.dataList.toString()}');
      regions.add(HomeCubit.dataList[0][i]['region']);
      district.add(HomeCubit.dataList[0][i]['location']);
      hospital.add(HomeCubit.dataList[0][i]['place_work']);
      doctorposition.add(HomeCubit.dataList[0][i]['expert']);
      doctorname.add(HomeCubit.dataList[0][i]['name']);
      times.add(HomeCubit.dataList[0][i]['time']);
    }
    return [];
  }

  addInfo(Map info) {
    if (!info.containsValue('')) {
      BoxService.instance.addInfoToBox(info);
    }
  }

  Map meetings = {
    "region": "",
    "district": "",
    "hospital": "",
    "position": "",
    "doctor": "",
    "picture": '',
    "time": '',
    'date': ''
  };

  int index = 0;
  int month = 0;
  int day = 0;

  collectInfo(value, List items) {
    for (var i = 0; i < HomeCubit.dataList[0].length; i++) {
      if (value == HomeCubit.dataList[0][i]['region']) {
        meetings.update('region', (e) => value);
        debugPrint(meetings.toString());
      } else if (value == HomeCubit.dataList[0][i]['location']) {
        meetings.update('district', (e) => value);
        debugPrint(meetings.toString());

      } else if (value == HomeCubit.dataList[0][i]['place_work']) {
        meetings.update('hospital', (e) => value);
        debugPrint(meetings.toString());

      } else if (value == HomeCubit.dataList[0][i]['expert']) {
        meetings.update('position', (e) => value);
        debugPrint(meetings.toString());

      } else if (value == HomeCubit.dataList[0][i]['name']) {
        index = i;
        meetings.update('doctor', (e) => value);
        meetings.update('picture', (e) => HomeCubit.dataList[0][i]['user_image']);
        debugPrint(meetings.toString());

      } else if (value == HomeCubit.dataList[0][i]['time']) {
        debugPrint('TIME');
        meetings.update('time', (e) => value);
        meetings.update('date', (e) => items);
        month = items[1];
        day = items[0];
        debugPrint(meetings.toString());
      }
    }
  }
}