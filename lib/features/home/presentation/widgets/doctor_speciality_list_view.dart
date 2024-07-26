import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:doctor_appointment/core/routes/routes.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/Item_doctor_speciality.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Doctor Speciality',
              style: TextStyles.style18SemiBold,
            ),
            GestureDetector(
              onTap: () {
                context.navigateTo(Routes.doctorSpecialityScreen);
              },
              child: Text(
                'See All',
                textAlign: TextAlign.right,
                style: TextStyles.style12Regular,
              ),
            ),
          ],
        ),
        verticalSpace(16),
        SizedBox(
          height: 100.h,
          child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 8.w, left: 8.w),
                child: const ItemDoctorSpeciality(),
              );
            },
          ),
        )
      ],
    );
  }
}
