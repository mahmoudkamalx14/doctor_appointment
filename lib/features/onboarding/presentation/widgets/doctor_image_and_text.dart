import 'package:flutter/material.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/svg/Group.png'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.14, 0.4]),
          ),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Text(
            'Best Doctor\n Appointment App',
            style: TextStyles.font32mainBlueBold.copyWith(height: 1.3),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
