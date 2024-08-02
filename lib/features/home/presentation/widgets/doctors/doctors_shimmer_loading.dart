import 'package:doctor_appointment/core/functions/get_doctor_image.dart';
import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsShimmerLoading extends StatelessWidget {
  const DoctorsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recommendation Doctor', style: TextStyles.style18SemiBold),
          verticalSpace(16),
          SizedBox(
            height: 320.h,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 126.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(getDoctorImage('')),
                      ),
                      horizontalSpace(16),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'doctor name',
                              style: TextStyles.style16Bold,
                            ),
                            verticalSpace(8),
                            Text(
                              'specialization name | phone',
                              style: TextStyles.style12Medium,
                            ),
                            verticalSpace(13),
                            Text(
                              'email address',
                              style: TextStyles.style12Medium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
