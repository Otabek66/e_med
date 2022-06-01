import 'package:e_med/models/doctors_model.dart';
import 'package:e_med/models/hospital_model.dart';

abstract class HomeState {
  HomeState();
}

class HomeInitail extends HomeState {
  HomeInitail();
}

class Homemain extends HomeState {
  Homemain();
}

class SyringeState extends HomeState {
  SyringeState();
}

class DoctorState extends HomeState {
  DoctorState();
}

class HospitalState extends HomeState {
  // List globalList;
  HospitalState();
}
class HospitalInfoState extends HomeState{
  HospitalModel hinfo;
  HospitalInfoState(this.hinfo);
}

class DoctorsInfoState extends HomeState{
  DoctorsModel hinfo;
  DoctorsInfoState(this.hinfo);
}

class BookingState {
  BookingState();
}

class NoMeditationState extends HomeState {
  String? text1;
  String? text2;
  NoMeditationState({required this.text1, required this.text2});
}
