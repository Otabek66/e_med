import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/icons/icon_const.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/screens/home/view/pages/treatments/pagestreatment/current_treatment.dart';
import 'package:e_med/screens/home/view/pages/treatments/pagestreatment/drug_history.dart';
import 'package:e_med/screens/home/view/pages/treatments/pagestreatment/medical_history.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:flutter/material.dart';

class TreatmentView extends StatefulWidget {
  const TreatmentView({Key? key}) : super(key: key);

  @override
  State<TreatmentView> createState() => _TreatmentViewState();
}

class _TreatmentViewState extends State<TreatmentView> with TickerProviderStateMixin {
  TabController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            
            AppBarWidget(
              trailing: IconConst.bell,
              leading: Icon(Icons.person),
              center: SizedBox(
                  height: context.h * 0.025,
                  width: context.w * 0.3,
                  child: IconConst.logo),
            ),
            SizedBox(
              height: context.h * 0.05,
              child: tabBar()),
            Expanded(
              child: SizedBox(
                
                child: TabBarView(
                  controller: _controller,
                  children: [
                    CurrentTreatment(),
                    MedicalHistory(),
                    DrugHistory(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  TabBar tabBar()=>TabBar(
    controller: _controller,
    indicatorColor: ColorConst.kPrimaryColor,
    labelColor: ColorConst.kPrimaryColor,
    unselectedLabelColor: ColorConst.grey,
    tabs: [
    Tab(icon: Text("Current treatment")),
    Tab(icon: Text("Medical history")),
    Tab(icon: Text("Drug history")),
  ]);
}
