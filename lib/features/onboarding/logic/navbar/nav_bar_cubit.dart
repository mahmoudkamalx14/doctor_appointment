import 'package:doctor_appointment/core/di/dependency_injection.dart';
import 'package:doctor_appointment/features/appointment/appointments_screen.dart';
import 'package:doctor_appointment/features/chats/messages_screen.dart';
import 'package:doctor_appointment/features/home/logic/home_cubit.dart';
import 'package:doctor_appointment/features/home/presentation/screen/home_screen.dart';
import 'package:doctor_appointment/features/onboarding/logic/navbar/nav_bar_state.dart';
import 'package:doctor_appointment/features/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(const NavBarState.initial());

  static NavBarCubit get(context) => BlocProvider.of(context);

  final List<Widget> screens = [
    const HomeScreen(),
    const MessagesScreen(),
    const AppointmentsScreen(),
    const ProfileScreen(),
  ];

  int currentIndex = 0;

  void changeIndexNavBar(int index) {
    currentIndex = index;
    if (currentIndex == 0) {
      getIt<HomeCubit>().getDataSpecialization();
    }
    emit(const NavBarState.success());
  }
}
