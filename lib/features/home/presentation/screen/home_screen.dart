import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/doctor_speciality_list_view.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/home_appbar.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/home_doctors_blue.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/recommendation_doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 24.h, right: 24.w, left: 24.w),
        child: Column(
          children: [
            const HomeAppBar(),
            const HomeDoctorsBlue(),
            verticalSpace(24),
            const DoctorSpecialityListView(),
            verticalSpace(24),
            const Expanded(child: RecommendationDoctorsListView()),
          ],
        ),
      ),
    );
  }
}
