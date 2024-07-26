import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/widgets/custom_appbar.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/Item_doctor_speciality.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityScreen extends StatelessWidget {
  const DoctorSpecialityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
          child: Column(
            children: [
              CustomAppBar(title: 'Doctor Speciality', onTap: () {}),
              verticalSpace(42),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return ItemDoctorSpeciality(radius: 40, fontSize: 14.sp);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
