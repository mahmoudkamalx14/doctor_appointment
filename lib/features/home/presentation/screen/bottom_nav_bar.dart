// ignore_for_file: library_private_types_in_public_api

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:doctor_appointment/features/appointment/appointments_screen.dart';
import 'package:doctor_appointment/features/chats/messages_screen.dart';
import 'package:doctor_appointment/features/home/presentation/screen/home_screen.dart';
import 'package:doctor_appointment/features/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF247CFF),
        child: const Icon(
          Icons.search,
          size: 30,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: 80,
        icons: const [
          Icons.home,
          Icons.mark_unread_chat_alt_sharp,
          Icons.vertical_shades_closed_sharp,
          Icons.person_2_outlined,
        ],
        activeColor: const Color(0xFF247CFF),
        inactiveColor: Colors.black,
        gapLocation: GapLocation.center,
        gapWidth: 40.w,
        splashColor: Colors.white,
        activeIndex: currentIndex,
        elevation: 0,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        iconSize: 36,
        backgroundColor: Colors.white,
      ),
    );
  }
}
