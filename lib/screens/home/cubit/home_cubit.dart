import 'package:bloc/bloc.dart';
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

  List<String> himage = [
    "assets/images/hospitals/hospitalone.png",
    "assets/images/hospitals/hospitaltwo.png",
    "assets/images/hospitals/hospitalthree.png",
    "assets/images/hospitals/hospitalfour.png",
    "assets/images/hospitals/hospitalfive.png",
  ];

  List<HospitalModel> hinfo = [
    HospitalModel("Uzbekistan New International Clinic", "Tashkent, Shaykhontokhur, Navoi street"),
    HospitalModel("Uzbekistan New International Clinic", "Tashkent, Shaykhontokhur, Navoi street"),
    HospitalModel("Uzbekistan New International Clinic", "Tashkent, Shaykhontokhur, Navoi street"),
    HospitalModel("Uzbekistan New International Clinic", "Tashkent, Shaykhontokhur, Navoi street"),
    HospitalModel("Uzbekistan New International Clinic", "Tashkent, Shaykhontokhur, Navoi street"),
  ];
  }

