import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:doctor_appointment/features/profile/presentation/widgets/profile_category_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'profile_buttons_medical_records.dart';
import 'profile_image_widget.dart';

class ProfileInfowidget extends StatelessWidget {
  const ProfileInfowidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 85.h, horizontal: 24.w),
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
          ),
          child: Column(
            children: [
              Text('Mahmoud Kamal', style: TextStyles.style20SemiBold),
              verticalSpace(8),
              Text('mkelsafty1838@gmail.com', style: TextStyles.style14Regluar),
              verticalSpace(24),
              const ProfileButtonsMedicalRecords(),
              verticalSpace(24),
              const ProfileCategoryInfo(),
            ],
          ),
        ),
        Positioned(
          top: -70.h,
          child: const ProfileImageWidget(),
        ),
      ],
    );
  }
}
