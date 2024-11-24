import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:doctor_appointment/core/widgets/appbar_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.onTap,
    required this.title,
    this.image,
    this.icon,
  });

  final Function()? onTap;
  final String title;
  final String? image;

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
          child: AppbarIcon(icon: icon),
        ),
        const Spacer(),
        Text(title, style: TextStyles.style18SemiBold),
        const Spacer(),
        image != null
            ? GestureDetector(
                onTap: onTap,
                child: SvgPicture.asset(image!),
              )
            : SizedBox(width: 30.w),
      ],
    );
  }
}
