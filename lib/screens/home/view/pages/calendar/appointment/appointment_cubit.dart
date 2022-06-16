// import 'package:bloc/bloc.dart';
// import 'package:emed/screens/home/cubit/home_cubit.dart';
// import 'package:emed/screens/home/state/home_state.dart';

// class AppointmentCubit extends Cubit<BookingState>{
//   AppointmentCubit():super(BookingState()){
//     arrange();
//   }

//   List regions = [];
//   List district = [];
//   List work = [];
//   List expert = [];
//   List name = [];

//   void arrange(){
//     for (var i = 0; i < HomeCubit.dataList[0].length; i++) {
//       regions.add(HomeCubit.dataList[0][i]['region']);
//       district.add(HomeCubit.dataList[0][i]['location']);
//       work.add(HomeCubit.dataList[0][i]['place_work']);
//       expert.add(HomeCubit.dataList[0][i]['expert']);
//       name.add(HomeCubit.dataList[0][i]['name']);
//       // print(HomeCubit.dataList[0][i]['name']);
//     }
//   }
// }