import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/doctors/doctors_bloc_builder.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/home_appbar.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/home_doctors_blue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/specialization/speciality_bloc_builder.dart';

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
            const SpecialityBlocBuilder(),
            const DoctorsBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
