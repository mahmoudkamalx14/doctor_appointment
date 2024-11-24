import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          Text(
            'Profile',
            style: TextStyles.style20SemiBold.copyWith(
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset('assets/icons/setting-2.svg'),
          ),
        ],
      ),
    );
  }
}
