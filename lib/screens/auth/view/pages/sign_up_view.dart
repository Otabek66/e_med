import 'package:e_med/core/components/check_validator.dart';
import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:e_med/core/constants/font/FontStyles.dart';
import 'package:e_med/core/constants/font/fontsize.dart';
import 'package:e_med/extensions/context_extension.dart';
import 'package:e_med/screens/auth/cubit/auth_cubit.dart';
import 'package:e_med/screens/auth/state/auth_state.dart';
import 'package:e_med/widgets/app_bar_new.dart';
import 'package:e_med/widgets/appbar_widget.dart';
import 'package:e_med/widgets/button_widget.dart';
import 'package:e_med/widgets/elevated_button_widget.dart';
import 'package:e_med/widgets/text_form_widget.dart';
import 'package:e_med/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);

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
                  AppBarWidgetNew(text: "Sign Up",
                  onPressed: (){
                    context.read<AuthCubit>().changeState(AuthInitial());
                  },
                ), Divider(thickness: 1)],
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
                          const Text(
                              'Sign up in order to get a full access to the system',
                              style: FontStyles.headline4s,
                              textAlign: TextAlign.center),
                          SizedBox(height: context.h * 0.04),
                          const Text("Full name", style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.01),
                          MyTextField.textField(
                              text: "Enter your full name...",
                              controller: nameController,
                              validator: CheckValidator.nameValidator),
                          SizedBox(height: context.h * 0.04),
                          const Text("Phone number", style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.01),
                          MyTextField.textField(
                              text: "Enter your phone number...",
                              controller: phoneController,
                              validator: CheckValidator.phoneValidator),
                          SizedBox(height: context.h * 0.01),
                          Center(
                            child: TextWidget.textwidget("We will send confirmation code to this number",size: 15,color: ColorConst.blackfortext)
                            // Text(
                            //     "We will send confirmation code to this number",
                                // style: FontStyles.headline52),
                          ),
                          SizedBox(height: context.h * 0.035),
                          const Text("Create password",
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
                          const Spacer(),
                          ElevatedButtonWidget.elevatedButton(context, "Continue", () {
                             if (formKey.currentState!.validate()) {
                                context.read<AuthCubit>().changeState(AuthConfirmation());
                              }
                           }),
                          SizedBox(height: context.h * 0.04),
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
