// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:doctor_appointment/features/appointment/presentation/screens/appointments_screen.dart';
import 'package:doctor_appointment/features/chats/presentation/screens/messages_screen.dart';
import 'package:doctor_appointment/features/home/presentation/screen/home_screen.dart';
import 'package:doctor_appointment/features/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

final List<Widget> screens = [
  const HomeScreen(),
  const MessagesScreen(),
  const AppointmentsScreen(),
  const ProfileScreen(),
];

int currentIndex = 0;

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        width: 100,
        height: 100,
        decoration: ShapeDecoration(
          color: const Color(0xFF247CFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: const Icon(
          Icons.search_outlined,
          size: 50,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: 80.h,
        icons: const [
          FontAwesomeIcons.houseChimneyMedical,
          FontAwesomeIcons.message,
          FontAwesomeIcons.calendarDays,
          FontAwesomeIcons.user,
        ],
        activeColor: const Color(0xFF247CFF),
        inactiveColor: Colors.grey[700],
        gapLocation: GapLocation.center,
        splashColor: Colors.white,
        activeIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        iconSize: 28,
        backgroundColor: Colors.white,
      ),
    );
  }
}
