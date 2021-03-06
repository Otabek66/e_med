import 'package:e_med/models/hospital_model.dart';
import 'package:e_med/screens/home/cubit/home_cubit.dart';
import 'package:e_med/screens/home/state/home_state.dart';
import 'package:e_med/screens/home/view/pages/booking/bookingpage.dart';
import 'package:e_med/screens/home/view/pages/calendar/homepage/homepage.dart';
import 'package:e_med/screens/home/view/pages/hospital/doctor_info_view.dart';
import 'package:e_med/screens/home/view/pages/hospital/filter_view.dart';
import 'package:e_med/screens/home/view/pages/hospital/hospital_info_page.dart';
import 'package:e_med/screens/home/view/pages/hospital/hospital_search.dart';
import 'package:e_med/screens/home/view/pages/hospital/hospital_view.dart';
import 'package:e_med/screens/home/view/pages/treatments/mainsyringe/treatment_view.dart';
import 'package:e_med/widgets/navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeMainView extends StatelessWidget {
  const HomeMainView({
    Key? key,
  }) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context){
        var data = HomeCubit();
        data.getData();
        return data;
      },
      child: homeScaffold(),
    );
  }

  Scaffold homeScaffold() => Scaffold(
        bottomNavigationBar: const NavigationBarWidgets(),
        body: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          if (state is Homemain) {
            return const HomePage();
          } else if (state is SyringeState) {
            return TreatmentView();
          } else if (state is DoctorState) {
            return const Center(
              child: Text('Doctor Page'),
            );
          } else if (state is HospitalState) {
            return HospitalSearchView();
          } else if (state is HospitalInfoState) {
            return HospitalInfoView(info: state.hinfo);
          } 
          else if (state is DoctorsInfoState) {
            return DoctorInfoView(info: state.hinfo);
          }
          else if (state is FilterState) {
            return FilterView();
          }else if (state is BookingState) {
            return const BookingPage();
          } else {
            return Container();
          }
        }),
      );
}
