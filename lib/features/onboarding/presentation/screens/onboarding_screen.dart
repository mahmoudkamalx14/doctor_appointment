import 'package:flutter/material.dart';
import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/doc_logo_and_name.dart';
import '../widgets/doctor_image_and_text.dart';
import '../widgets/get_restarted_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h,
          ),
          child: Column(
            children: [
              const DocLogoAndName(),
              verticalSpace(30),
              const DoctorImageAndText(),
              verticalSpace(16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.font13GrayRegluar,
                      textAlign: TextAlign.center,
                    ),
                    verticalSpace(18),
                    const GetRestartedButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
