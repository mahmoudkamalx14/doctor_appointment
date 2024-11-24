import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:doctor_appointment/core/widgets/app_text_button.dart';
import 'package:doctor_appointment/core/widgets/custom_appbar.dart';
import 'package:doctor_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/doctors/doctor_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorInfoScreen extends StatelessWidget {
  const DoctorInfoScreen({super.key, required this.doctor});

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                image: 'assets/images/dots.svg',
                onTap: () {
                  context.pop();
                },
                title: doctor.name!,
              ),
              verticalSpace(32),
              DoctorsListViewItem(doctor: doctor),
              verticalSpace(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('About', style: TextStyles.style14Bold),
                  Text('Location', style: TextStyles.style14Bold),
                  Text('Reviews', style: TextStyles.style14Bold),
                ],
              ),
              verticalSpace(14),
              const Divider(color: Color(0xFF9E9E9E)),
              verticalSpace(32),
              Text('About me', style: TextStyles.style16SemiBold),
              verticalSpace(12),
              Text(
                'Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.',
                style: TextStyles.style14Regluar,
              ),
              verticalSpace(24),
              Text('Working Time', style: TextStyles.style16SemiBold),
              verticalSpace(12),
              Text(
                'Monday - Friday, ${doctor.startTime} - ${doctor.endTime}',
                style: TextStyles.style14Regluar,
              ),
              verticalSpace(24),
              Text('STR', style: TextStyles.style16SemiBold),
              verticalSpace(12),
              Text(
                doctor.address!,
                style: TextStyles.style14Regluar,
              ),
              verticalSpace(24),
              Text('Pengalaman Praktik', style: TextStyles.style16SemiBold),
              verticalSpace(12),
              Text(
                doctor.city!.name!,
                style: TextStyles.style14Regluar,
              ),
              const Spacer(),
              AppTextButton(
                textButton: 'Make An Appointment',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
