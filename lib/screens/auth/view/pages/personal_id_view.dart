import 'package:e_med/core/components/box_only_decoration.dart';
import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/core/constants/icons/icon_const.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/screens/auth/cubit/auth_cubit.dart';
import 'package:e_med/screens/auth/state/auth_state.dart';
import 'package:e_med/widgets/appbar_widget.dart';
import 'package:e_med/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalIdView extends StatelessWidget {
  const PersonalIdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: ButtonWidgets(
            child: const Text('Go to your account'),
            height: context.h * 0.07,
            onPressed: () {
              // go to next pages
            }),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  AppBarWidget(text: "Your Personal ID",
                                    onPressed: (){
                    context.read<AuthCubit>().changeState(AuthSignIN());
                  },
                  ),
                  Divider(thickness: 1)
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                child: Column(
                  children: [
                    
                    SizedBox(
                      height: context.h * 0.1,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/images/idmain.png')
                    ),
                    SizedBox(height: context.h * 0.04),
                    Text(
                      "Doctors use your ID to have an access to your medical informations. We have sent this ID and your password to your number so you don’t forget them",
                      style: FontStyles.headline4s,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: context.h * 0.04),
                    Container(
                        width: context.w,
                        child: Text("Your ID", style: FontStyles.headline3s)),
                    SizedBox(height: context.h * 0.01),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              height: context.h * 0.07,
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              alignment: Alignment.centerLeft,
                              // id code will come from backend
                              child:
                                  Text("12345678", style: FontStyles.headline4s),
                              decoration: BoxOnlyDecoration.decor(
                                  Colors.grey.shade100,
                                  topLeft: 10.0,
                                  bottomLeft: 10.0)),
                        ),
                        InkWell(
                          child: Container(
                              height: context.h * 0.07,
                              padding: EdgeInsets.symmetric(horizontal: 25.0),
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  Text("Copy", style: FontStyles.headline3s),
                                  IconConst.copy,
                                ],
                              ),
                              decoration: BoxOnlyDecoration.decor(Colors.white,
                                  topRight: 10.0, bottomRight: 10.0)),
                          onTap: () {
                            // ID code will be copied
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
