import 'package:doctor_appointment/core/cache/cache_helper.dart';
import 'package:doctor_appointment/core/cache/constants.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appointment/features/authentication/data/models/login_request_body.dart';
import 'package:doctor_appointment/features/authentication/data/repos/login_repo.dart';
import 'package:doctor_appointment/features/authentication/logic/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(
      LoginRequestBody(
          email: emailController.text, password: passwordController.text),
    );

    response.when(
      success: (loginResponse) {
        saveUserToken(loginResponse.userData!.token ?? '');

        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message!));
      },
    );
  }

  saveUserToken(String token) {
    SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
  }
}
