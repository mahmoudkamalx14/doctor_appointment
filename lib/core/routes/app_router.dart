import 'package:doctor_appointment/core/functions/build_page_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_appointment/features/authentication/logic/register/sign_up_cubit.dart';
import 'package:doctor_appointment/features/authentication/logic/login/login_cubit.dart';
import 'package:doctor_appointment/features/authentication/presentation/screens/signup_screen.dart';
import 'package:doctor_appointment/features/authentication/presentation/screens/login_screen.dart';
import 'package:doctor_appointment/features/home/ui/screen/home_screen.dart';
import 'package:doctor_appointment/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:doctor_appointment/core/di/dependency_injection.dart';
import 'package:doctor_appointment/core/routes/routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final String routeName = settings.name!;

    switch (routeName) {
      case Routes.onBoardingScreen:
        return smoothEaseInOutPageRoute(const OnBoardingScreen(),
            settings: settings);

      case Routes.loginScreen:
        return smoothEaseInOutPageRoute(
          BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          ),
          settings: settings,
        );

      case Routes.signupScreen:
        return smoothEaseInOutPageRoute(
          BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
          settings: settings,
        );

      case Routes.homeScreen:
        return smoothEaseInOutPageRoute(const HomeScreen(), settings: settings);

      default:
        return null;
    }
  }
}
