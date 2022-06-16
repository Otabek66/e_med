import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/screens/home/cubit/home_cubit.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

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
                    onTap: () => Navigator.pop(context),
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
                        itemCount: HomeCubit.dataList[0].length,
                        itemBuilder: (__, _) {
                          return ListTile(
                            leading: Checkbox(
                              onChanged: (v) {},
                              value: true,
                            ),
                            title: Text(HomeCubit.dataList[0][_]['expert']),
                          );
                        }),
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
                        itemCount: HomeCubit.dataList[0].length,
                        itemBuilder: (__, _) {
                          return ListTile(
                            leading: Checkbox(
                              onChanged: (v) {},
                              value: true,
                            ),
                            title: Text(HomeCubit.dataList[0][_]['region']),
                          );
                        }),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
