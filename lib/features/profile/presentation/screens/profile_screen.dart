import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/features/profile/presentation/widgets/profile_appbar.dart';
import 'package:doctor_appointment/features/profile/presentation/widgets/profile_info_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF247CFF),
      body: SafeArea(
        child: Column(
          children: [
            const ProfileAppBar(),
            verticalSpace(60),
            const Expanded(child: ProfileInfowidget()),
          ],
        ),
      ),
    );
  }
}
