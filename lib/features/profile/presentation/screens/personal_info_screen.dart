import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:doctor_appointment/core/widgets/custom_appbar.dart';
import 'package:doctor_appointment/features/profile/presentation/widgets/personal_info_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
          child: Column(
            children: [
              CustomAppBar(
                onTap: () {
                  context.pop();
                },
                title: 'Personal information',
              ),
              verticalSpace(18),
              const PersonalInfoDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
