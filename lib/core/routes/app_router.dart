import 'package:doctor_appointment/core/functions/build_page_route.dart';
import 'package:doctor_appointment/features/appointment/presentation/screens/appointments_screen.dart';
import 'package:doctor_appointment/features/chats/presentation/screens/messages_screen.dart';
import 'package:doctor_appointment/features/home/logic/home_cubit.dart';
import 'package:doctor_appointment/features/onboarding/presentation/screens/bottom_nav_bar.dart';
import 'package:doctor_appointment/features/home/presentation/screen/doctor_speciality_screen.dart';
import 'package:doctor_appointment/features/home/presentation/screen/notifications_screen.dart';
import 'package:doctor_appointment/features/home/presentation/screen/recommendation_docdor_screen.dart';
import 'package:doctor_appointment/features/profile/presentation/screens/personal_info_screen.dart';
import 'package:doctor_appointment/features/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_appointment/features/authentication/logic/register/sign_up_cubit.dart';
import 'package:doctor_appointment/features/authentication/logic/login/login_cubit.dart';
import 'package:doctor_appointment/features/authentication/presentation/screens/signup_screen.dart';
import 'package:doctor_appointment/features/authentication/presentation/screens/login_screen.dart';
import 'package:doctor_appointment/features/home/presentation/screen/home_screen.dart';
import 'package:doctor_appointment/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:doctor_appointment/core/di/dependency_injection.dart';
import 'package:doctor_appointment/core/routes/routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final String routeName = settings.name!;

    switch (routeName) {
      case Routes.onBoardingScreen:
        return smoothEaseInOutPageRoute(
          const OnBoardingScreen(),
          settings: settings,
        );

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

      case Routes.navBarScreen:
        return smoothEaseInOutPageRoute(
          BlocProvider(
            create: (context) => getIt<HomeCubit>()..getDataSpecialization(),
            child: const BottomNavBar(),
          ),
          settings: settings,
        );

      case Routes.homeScreen:
        return smoothEaseInOutPageRoute(
          BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: const HomeScreen(),
          ),
          settings: settings,
        );

      case Routes.messagesScreen:
        return smoothEaseInOutPageRoute(
          const MessagesScreen(),
          settings: settings,
        );

      // case Routes.doctorInfoScreen:
      //   return smoothEaseInOutPageRoute(
      //     BlocProvider(
      //       create: (context) => getIt<HomeCubit>(),
      //       child: DoctorInfoScreen(doctor: doctor),
      //     ),
      //     settings: settings,
      //   );

      case Routes.appointmentsScreen:
        return smoothEaseInOutPageRoute(
          const AppointmentsScreen(),
          settings: settings,
        );

      case Routes.profileScreen:
        return smoothEaseInOutPageRoute(
          const ProfileScreen(),
          settings: settings,
        );

      case Routes.personalInfoScreen:
        return smoothEaseInOutPageRoute(
          const PersonalInfoScreen(),
          settings: settings,
        );

      case Routes.notificationsScreen:
        return smoothEaseInOutPageRoute(
          const NotificationScreen(),
          settings: settings,
        );

      case Routes.doctorSpecialityScreen:
        return smoothEaseInOutPageRoute(
          BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: const DoctorSpecialityScreen(),
          ),
          settings: settings,
        );

      case Routes.recommendationDocdorScreen:
        return smoothEaseInOutPageRoute(
          const RecommendationDocdorScreen(),
          settings: settings,
        );

      default:
        return null;
    }
  }
}
