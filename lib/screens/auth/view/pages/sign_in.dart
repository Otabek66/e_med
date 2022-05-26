
import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/screens/auth/cubit/auth_cubit.dart';
import 'package:e_med/screens/auth/state/auth_state.dart';
import 'package:e_med/widgets/appbar_widget.dart';
import 'package:e_med/widgets/button_widget.dart';
import 'package:e_med/widgets/textform_filed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class SignInView extends StatelessWidget {
  SignInView({Key? key}) : super(key: key);

  // all formfields will be come from cubit
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  AppBarWidget(text: "Log In"), 
                  Divider(thickness: 1)
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: context.h * 0.88,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: context.h * 0.04),
                          const Center(
                            child: Text(
                                'Log in to your account',
                                style: FontStyles.headline4s,
                                textAlign: TextAlign.center),
                          ),
                          SizedBox(height: context.h * 0.04),
                          SizedBox(height: context.h * 0.04),
                          const Text("Phone number", style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.01),
                          MyTextField.textField(
                              text: "Enter your phone number...",
                              controller: phoneController,
                              validator: CheckValidator.phoneValidator),
                          SizedBox(height: context.h * 0.04),
                          const Text("Your password",
                              style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.01),
                          StatefulBuilder(builder: (context, setState) {
                            return MyTextField.textField(
                                text: "Enter your new password...",
                                controller: passwordController,
                                validator: CheckValidator.passwordValidator,
                                isShown: context.watch<AuthCubit>().getShown,
                                iconButton: IconButton(
                                    onPressed: () {
                                      context.read<AuthCubit>().obSecure();
                                      setState(() {});
                                    },
                                    icon: Icon(Icons.remove_red_eye)));
                          }),
                          SizedBox(height: context.h * 0.04),
                          ButtonWidgets(
                            child: Text("Continue"),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context.read<AuthCubit>().changeState(AuthConfirmation());
                              }
                            },
                            width: context.w,
                            height: context.h * 0.07,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}