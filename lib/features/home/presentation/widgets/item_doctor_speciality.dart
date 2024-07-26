import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDoctorSpeciality extends StatelessWidget {
  const ItemDoctorSpeciality({
    super.key,
    this.radius,
    this.fontSize,
  });

  final double? radius;

  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: radius ?? 28.r,
            backgroundColor: const Color(0xFFF4F8FF),
            child: Image.asset('assets/images/Brain 1.png'),
          ),
          verticalSpace(12),
          Text(
            'Neurologic',
            textAlign: TextAlign.center,
            style: TextStyles.style12Regular.copyWith(
              color: const Color(0xFF242424),
              fontSize: fontSize ?? 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
