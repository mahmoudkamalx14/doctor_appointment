import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/dio_factory.dart';
import 'package:doctor_appointment/features/authentication/data/apis/auth_service.dart';
import 'package:doctor_appointment/features/authentication/data/repos/login_repo.dart';
import 'package:doctor_appointment/features/authentication/logic/login/login_cubit.dart';
import 'package:doctor_appointment/features/authentication/data/repos/signup_repo.dart';
import 'package:doctor_appointment/features/authentication/logic/register/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<AuthService>(() => AuthService(dio));

  //* Login

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(AuthService(dio)));

  getIt.registerFactory<LoginCubit>(
      () => LoginCubit(LoginRepo(AuthService(dio))));

  //! Sign Up

  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(AuthService(dio)));

  getIt.registerFactory<SignupCubit>(
      () => SignupCubit(SignupRepo(AuthService(dio))));
}
