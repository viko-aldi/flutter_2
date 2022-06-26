

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_1/ui/pages/models/user_models.dart';
import 'package:flutter_1/ui/pages/services/auth_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp(
      {required String email,
      required String password,
      required String name,
      String age = ''}) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthService()
          .signUp(email: email, password: password, name: name, age: age);
      emit(AuthSucces(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}
