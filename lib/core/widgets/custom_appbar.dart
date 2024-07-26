import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.onTap,
    required this.title,
    this.icon,
  });

  final Function() onTap;
  final String title;

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Container(
            width: 40.w,
            height: 40.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFECECEC)),
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            child: Icon(icon ?? Icons.arrow_back_ios_new_sharp),
          ),
        ),
        const Spacer(),
        Text(title, style: TextStyles.style18SemiBold),
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 40.w,
            height: 40.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFECECEC)),
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            child: SvgPicture.asset('assets/images/dots.svg'),
          ),
        ),
      ],
    );
  }
}
