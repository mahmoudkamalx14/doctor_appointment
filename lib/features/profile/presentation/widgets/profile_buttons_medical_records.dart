import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileButtonsMedicalRecords extends StatelessWidget {
  const ProfileButtonsMedicalRecords({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: ShapeDecoration(
        color: const Color(0xFFF8F8F8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {},
            child: Text(
              'My Appointment',
              style: TextStyles.style14Regluar.copyWith(
                color: const Color(0xFF242424),
              ),
            ),
          ),
          Container(
            height: 40.h,
            color: const Color(0xFFE0E0E0),
            width: 1.w,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Medical records',
              style: TextStyles.style14Regluar.copyWith(
                color: const Color(0xFF242424),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
