import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemRecommendationDoctor extends StatelessWidget {
  const ItemRecommendationDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 126.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            horizontalSpace(8),
            Image.asset('assets/images/imageDocdor.png'),
            horizontalSpace(16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. Randy Wigham',
                  style: TextStyles.style16Bold,
                ),
                verticalSpace(8),
                Text(
                  'General | RSUD Gatot Subroto',
                  style: TextStyles.style12Medium,
                ),
                verticalSpace(13),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 19,
                    ),
                    Text(
                      ' 4.8 (4,279 reviews)',
                      style: TextStyles.style12Medium,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
