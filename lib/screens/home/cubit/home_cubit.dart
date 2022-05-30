import 'package:bloc/bloc.dart';
import 'package:e_med/models/doctors_info_model.dart';
import 'package:e_med/models/doctors_model.dart';
import 'package:e_med/models/hospital_model.dart';
import 'package:e_med/screens/home/state/home_state.dart';
import 'package:e_med/screens/home/view/pages/hospital/hospital_search.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(Homemain());

  int currentpage = 0;
  // List globalList;
  // Set searchList;

  changeState(HomeState state) {
    emit(state);
  }

  changeToHinfo(HospitalModel info){
    emit(HospitalInfoState(info));
  }

  changeToDinfo(HospitalModel info){
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

  // search(String value) {
  //   for (var i = 0; i < globalList![0].length; i++) {
  //     if (value.isEmpty) {
  //       searchList!.clear();
  //       emit(HospitalState(globalList));
  //     } else if (globalList![0][i]['name']
  //         .toString()
  //         .toLowerCase()
  //         .contains(value.toString().toLowerCase())) {
  //       searchList!.add(globalList![0][i]);
  //       print("globalList ${globalList![0][i]['name']}");
  //       print(searchList!.toList());
  //       // debugPrint(searchList!.toList()[i].runtimeType.toString());
  //       emit(HomeComplete(homeModel: globalList));
  //       return globalList!.toList();
  //     } else {
  //       searchList!.clear();
  //       emit(HomeComplete(homeModel: globalList));
  //     }
  //   }

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
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        ],
      
    ),
     HospitalModel(
       "assets/images/hospitals/hospitaltwo.png",
      "Uzbekistan New International Clinic",
      "Tashkent, Shaykhontokhur, Navoi street",
      "+998 97 210 11 12",
      "Monday - Saturday",
      "10:00 - 16:00",
      "See on google maps",
      "tashclink.org",
      [
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
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
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
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
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
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
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        DoctorsModel("assets/images/doctors/doctor.png", "Mavlonov Boburjon", "Pediatric Pulmonolog",[DoctorsInfoModel(4,"Monday - Saturday","10:00 - 16:00")]),
        ],
    ),
  ];
}
