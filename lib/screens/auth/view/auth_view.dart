import 'package:e_med/core/base/base_view.dart';
import 'package:e_med/screens/auth/cubit/auth_cubit.dart';
import 'package:e_med/screens/auth/state/auth_state.dart';
import 'package:e_med/screens/auth/view/pages/confirmation_page.dart';
import 'package:e_med/screens/auth/view/pages/personal_id_view.dart';
import 'package:e_med/screens/auth/view/pages/sign_in.dart';
import 'package:e_med/screens/auth/view/pages/sign_up_view.dart';
import 'package:e_med/screens/auth/view/splash/get_started_view.dart';
import 'package:e_med/screens/auth/view/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: scafold(),
    );
  }

  Scaffold scafold() {
    return Scaffold(
      body: BaseView(
          viewModel: AuthView,
          OnPageBuilder: (context, widget) {
            return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
              if (state is AuthSplash) {
                return const SplashView();
              } else if (state is AuthInitial) {
                return const GetStartedView();
              } else if (state is AuthSignIN) {
                return SignInView();
              } else if (state is AuthSignUP) {
                return const SignUpView();
              } else if (state is AuthConfirmation) {
                return const ConfirmationView();
              } else if (state is AuthId) {
                return const PersonalIdView();
              } else {
                return Container();
              }
            });
          }),
    );
  }
}
