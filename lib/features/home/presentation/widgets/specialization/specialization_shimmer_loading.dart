import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import 'doctor_speciality_see_all.dart';

class SpecializationShimmerLoading extends StatelessWidget {
  const SpecializationShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Column(
          children: [
            const DoctorSpecialitySeeAll(),
            verticalSpace(16),
            SizedBox(
              height: 115.h,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 8.w, left: 8.w),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 28.r,
                          backgroundColor: const Color(0xFFF4F8FF),
                        ),
                        verticalSpace(12),
                        Text(
                          'Loading',
                          textAlign: TextAlign.center,
                          style: TextStyles.font13GrayRegluar,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
