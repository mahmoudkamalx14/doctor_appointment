import 'package:doctor_appointment/core/functions/get_doctor_image.dart';
import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:doctor_appointment/features/home/presentation/screen/doctor_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/specialization_response_model.dart';

class DoctorsListViewItem extends StatelessWidget {
  const DoctorsListViewItem({
    super.key,
    required this.doctor,
  });

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => DoctorInfoScreen(doctor: doctor),
          ),
        );
      },
      child: SizedBox(
        height: 126.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(getDoctorImage(doctor.gender!)),
            ),
            horizontalSpace(16),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.name!,
                    style: TextStyles.style16Bold,
                  ),
                  verticalSpace(8),
                  Text(
                    '${doctor.specialization!.name} | ${doctor.phone}',
                    style: TextStyles.style12Medium,
                  ),
                  verticalSpace(13),
                  Text(
                    '${doctor.email}',
                    style: TextStyles.style12Medium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
