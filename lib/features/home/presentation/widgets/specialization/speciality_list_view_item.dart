import 'package:doctor_appointment/core/functions/get_speciality_image.dart';
import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:doctor_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDoctorSpeciality extends StatelessWidget {
  final SpecializationData? specializationData;
  final int itemIndex;
  final int selectedIndex;

  const ItemDoctorSpeciality({
    super.key,
    this.radius,
    this.fontSize,
    this.specializationData,
    required this.itemIndex,
    required this.selectedIndex,
  });

  final double? radius;

  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        itemIndex == selectedIndex
            ? Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  radius: radius ?? 28.r,
                  backgroundColor: const Color(0xFFF4F8FF),
                  child: Image.asset(
                      getSpecialityImage('${specializationData?.name}')),
                ),
              )
            : CircleAvatar(
                radius: radius ?? 28.r,
                backgroundColor: const Color(0xFFF4F8FF),
                child: Image.asset(
                    getSpecialityImage('${specializationData?.name}')),
              ),
        verticalSpace(12),
        Text(
          specializationData?.name ?? 'Specialization',
          textAlign: TextAlign.center,
          style: TextStyles.style12Regular.copyWith(
            color: const Color(0xFF242424),
            fontSize: fontSize ?? 13.sp,
          ),
        ),
      ],
    );
  }
}
