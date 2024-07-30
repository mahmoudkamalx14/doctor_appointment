import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:doctor_appointment/core/routes/routes.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Doctor Speciality', style: TextStyles.style18SemiBold),
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
    );
  }
}
