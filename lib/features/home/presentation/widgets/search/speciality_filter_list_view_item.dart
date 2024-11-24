import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityFilterListViewItem extends StatelessWidget {
  const SpecialityFilterListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.w),
      child: Container(
        height: 41.h,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
        decoration: ShapeDecoration(
          color: const Color(0xFFF2F4F7),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 2.w, color: const Color(0xFFF2F4F7)),
            borderRadius: BorderRadius.circular(24.r),
          ),
        ),
        child: Center(
          child: Text('General', style: TextStyles.style14Regluar),
        ),
      ),
    );
  }
}
