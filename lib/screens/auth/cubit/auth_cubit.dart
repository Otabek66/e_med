

import 'package:e_med/screens/auth/state/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthSplash(4.5)) {
    Future.delayed(const Duration(seconds: 4)).then((value) {
      emit(AuthInitial());
    });
  }

  bool _isShown = false;

  get getShown => _isShown;

  void obSecure() {
    _isShown = !_isShown;
  }

  changeState(AuthState state) {
    emit(state);
  }
}
