import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:e_med/models/doctors_info_model.dart';
import 'package:e_med/models/doctors_model.dart';
import 'package:e_med/models/hospital_model.dart';
import 'package:e_med/screens/home/state/home_state.dart';
import 'package:e_med/screens/home/view/pages/hospital/hospital_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as bundle;

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(Homemain());

   static List dataList = [];
   
   static List datainfo = [];

  Future<List> getData() async {
    final data = await bundle.rootBundle.loadString('lib/mock/data.json');
    final list = jsonDecode(data) as List;
    debugPrint(list.toString());
    datainfo.add(list);
    return list;
  }

  int currentpage = 0;
  // List globalList;
  // Set searchList;

  changeState(HomeState state) {
    emit(state);
  }

  changeToHinfo(HospitalModel info){
    emit(HospitalInfoState(info));
  }

  changeToDinfo(DoctorsModel info){
    emit(DoctorsInfoState(info));
  }

  changePage(int index) {
    if (index == 0) {
      currentpage = index;
      emit(Homemain());
    } else if (index == 1) {
      currentpage = index;
      emit(SyringeState());
    } else if (index == 2) {
      currentpage = index;
      emit(DoctorState());
    } else if (index == 3) {
      currentpage = index;
      emit(HospitalState());
    }
  }

  Set<HospitalModel> temp ={};

 void searching(String text) {
    temp.clear();
    for (var i = 0; i < hinfo.length; i++) {
      if (text.isEmpty) {
        temp.clear();
        emit(HospitalState());
      } else if (hinfo[i].name
          .toString()
          .toLowerCase()
          .contains(text.toString().toLowerCase())) {
        temp.add(hinfo[i]);
        emit(HospitalState());
      }
    }
  }

  List<HospitalModel> hinfo = [
    HospitalModel(
      "assets/images/hospitals/hospitalone.png",
      "Uzbekistan New International Clinic",
      "Tashkent, Shaykhontokhur, Navoi street",
      "+998 97 210 11 12",
      "Monday - Saturday",
      "10:00 - 16:00",
      "See on google maps",
      "tashclink.org",
      [
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi",2,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        ],
      
    ),
     HospitalModel(
       "assets/images/hospitals/hospitaltwo.png",
      "Tashkent international",
      "Tashkent, Shaykhontokhur, Navoi street",
      "+998 97 210 11 12",
      "Monday - Saturday",
      "10:00 - 16:00",
      "See on google maps",
      "tashclink.org",
      [
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        ],
    ),
     HospitalModel(
       "assets/images/hospitals/hospitalthree.png",
      "Uzbekistan New International Clinic",
      "Tashkent, Shaykhontokhur, Navoi street",
      "+998 97 210 11 12",
      "Monday - Saturday",
      "10:00 - 16:00",
      "See on google maps",
      "tashclink.org",
 [
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        ],
     
    ),
     HospitalModel(
       "assets/images/hospitals/hospitalfour.png",
      "Uzbekistan New International Clinic",
      "Tashkent, Shaykhontokhur, Navoi street",
      "+998 97 210 11 12",
      "Monday - Saturday",
      "10:00 - 16:00",
      "See on google maps",
      "tashclink.org",
      [
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        ],
    ),
     HospitalModel(
       "assets/images/hospitals/hospitalfive.png",
      "Uzbekistan New International Clinic",
      "Tashkent, Shaykhontokhur, Navoi street",
      "+998 97 210 11 12",
      "Monday - Saturday",
      "10:00 - 16:00",
      "See on google maps",
      "tashclink.org",
      [
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel("Uzbekistan New International Clinic","Tashkent, Shaykhontokhur, Navoi street",4,"Monday - Saturday","10:00 - 16:00")]),
        ],
    ),
  ];
}
