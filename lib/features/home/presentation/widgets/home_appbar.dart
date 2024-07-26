import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:doctor_appointment/core/routes/routes.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Omar!', style: TextStyles.font18Bold),
            verticalSpace(6),
            Text(
              'How Are you Today?',
              style: TextStyles.style11Regular,
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            context.navigateTo(Routes.notificationsScreen);
          },
          child: CircleAvatar(
            radius: 24.r,
            backgroundColor: const Color(0xFFF5F5F5),
            backgroundImage: const AssetImage('assets/images/Notification.png'),
          ),
        ),
      ],
    );
  }
}
