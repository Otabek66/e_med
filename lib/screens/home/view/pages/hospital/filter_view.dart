import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/core/constants/navigator/NavigationService.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/screens/home/cubit/home_cubit.dart';
import 'package:e_med/screens/home/state/home_state.dart';
import 'package:e_med/screens/home/view/pages/hospital/hospital_search.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterView extends StatelessWidget {
  // final List dataInfo;
  const FilterView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              AppBarWidget(
                leading: InkWell(
                    onTap: () => context.read<HomeCubit>().changeState(HospitalState()),
                    child: const Text(
                      'canel',
                      style: FontStyles.headline3blue,
                    )),
                center: const Text(
                  'Filter',
                  style: FontStyles.headline3s,
                ),
              ),
               ExpansionTile(
                title: const Text(
                  'Positions',
                  style: FontStyles.headline3s,
                ),
                children: [
                  SizedBox(
                    height: context.h * 0.5,
                    child: ListView.builder(
                        itemCount: HomeCubit.datainfo[0].length,
                        itemBuilder: (__,_) {
                          return ListTile(
                            leading: Checkbox(
                              onChanged: (v) {},
                              value: true,
                            ),
                            title: Text(HomeCubit.datainfo[0][_]['expert'],),
                          );
                        },),
                  )
                ],
              ),
              ExpansionTile(
                title: const Text(
                  'Regions',
                  style: FontStyles.headline3s,
                ),
                children: [
                  SizedBox(
                    height: context.h * 0.5,
                    child: ListView.builder(
                        itemCount: HomeCubit.datainfo[0].length,
                        itemBuilder: (__,_) {
                          return ListTile(
                            leading: Checkbox(
                              onChanged: (v) {},
                              value: true,
                            ),
                            title: Text(HomeCubit.datainfo[0][_]['region'],),
                          );
                        },),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),);
  }
}
