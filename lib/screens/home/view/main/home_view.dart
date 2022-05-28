
import 'package:e_med/screens/home/cubit/home_cubit.dart';
import 'package:e_med/screens/home/state/home_state.dart';
import 'package:e_med/screens/home/view/pages/booking/bookingpage.dart';
import 'package:e_med/screens/home/view/pages/calendar/home_page.dart';
import 'package:e_med/widgets/navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeMainView extends StatelessWidget {
  const HomeMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: homeScaffold(),
    );
  }

  Scaffold homeScaffold() => Scaffold(
        bottomNavigationBar: const NavigationBarWidgets(),
        body: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          if (state is Homemain) {
            return const HomePage();
          } else if (state is SyringeState) {
            return const Center(
              child: Text('Syringe Page'),
            );
          } else if (state is DoctorState) {
            return const Center(
              child: Text('Doctor Page'),
            );
          } else if (state is HospitalState) {
            return const Center(
              child: Text('Hospital Page'),
            );
          } else if (state is BookingState) {
            return const BookingPage();
          } else {
            return Container();
          }
        }),
      );
}
