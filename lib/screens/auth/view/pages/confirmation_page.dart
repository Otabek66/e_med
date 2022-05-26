import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/screens/auth/cubit/auth_cubit.dart';
import 'package:e_med/screens/auth/state/auth_state.dart';
import 'package:e_med/widgets/appbar_widget.dart';
import 'package:e_med/widgets/button_widget.dart';
import 'package:e_med/widgets/num_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmationView extends StatelessWidget {
  const ConfirmationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: ButtonWidgets(
            child: const Text('Confirm'),
            // width: context.w,
            height: context.h * 0.07,
            onPressed: () {
              context.read<AuthCubit>().changeState(AuthId());
            }),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
              text: "Sign Up",
              onPressed: () {
                context.read<AuthCubit>().changeState(AuthSignUP());
              },
            ),
            SizedBox(height: context.h * 0.060),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: context.w * 0.9,
                      child: const Text(
                        'We sent a confirmation code to your number. Please, enter the code',
                        style: FontStyles.headline5s,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: context.h * 0.070),
                  const Text(
                    "Confirmation code",
                    style: FontStyles.headline6s,
                  ),
                  SizedBox(height: context.h * 0.040),
                  SizedBox(
                      height: context.h * 0.070,
                      child: Row(
                        children: const [
                          NumberInputWidget(),
                          NumberInputWidget(),
                          NumberInputWidget(),
                          NumberInputWidget(),
                          NumberInputWidget(),
                          NumberInputWidget()
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
